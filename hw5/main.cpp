#include <cstring>
#include <vector>
#include <fstream>
#include <string>
#include <iostream>
#include <algorithm>

namespace Constants {
    int N, M, K;
    void readConstants(std::ifstream& in) {
        in >> N >> M >> K;
    }
};

class Book {
    friend class Student;
public:
    void In(std::ifstream& in, int id) {
        this->id = id;
        in >> name;
    }
private:
    std::string name;
    int id;
};

class Closet {
    friend class Student;
public:
    void In(std::ifstream& in, int id) {
        this->id = id;
        this->books = new Book[Constants::K];
        for (int i = 0; i < Constants::K; ++i) {
            books[i].In(in, i);
        }
    }
private:
    Book* books;
    int id;
};


class Row {
    friend class Student;
public:
    void In(std::ifstream& in, int id) {
        this->id = id;
        closets = new Closet[Constants::M];
        for (int i = 0; i < Constants::M; ++i) {
            closets[i].In(in, i);
        }
    }
private:
    Closet* closets;
    int id;
};

#include <mutex>
#include <iomanip>

class Logger {
public:
    Logger(std::string& path) {
        out_ = std::ofstream(path);
    }

    ~Logger() {
        out_.close();
    }

    void WriteLog(const std::string &log) {
        lock l(Logger::mutex_);
        if (out_.is_open()) {
            out_ << log << std::endl;
        } else {
            std::cout << log << std::endl;
        }
    }
private:
    static std::mutex mutex_;
    std::ofstream out_;

    typedef std::lock_guard<std::mutex> lock;
};

std::mutex Logger::mutex_;

#include <thread>

typedef std::lock_guard<std::mutex> lock;
typedef std::unique_lock<std::mutex> ulock;

class Catalog { 
public:
    Catalog(Logger* logger) {
        this->logger = logger;
    }
    
    void addString(const std::string& str1, const std::string& str2) {
        book_strings.push_back({str1, str2});
    }
    
    void print() {
        for (auto str : book_strings) {
            logger->WriteLog(str.first + ": " + str.second);
        }
    }
    void sort() {
        std::sort(book_strings.begin(), book_strings.end());
    }

private:
    std::vector<std::pair<std::string, std::string>> book_strings;
    Logger* logger;
};

class Student {
public:
    Student(Row* row, Catalog* catalog) {
        this->row = row;
        this->catalog = catalog;
    }
    void writeCatalogStrings() {
        for (int j = 0; j < Constants::M; ++j) {
            Closet* closet = &(row->closets[j]);
            for (int k = 0; k < Constants::K; ++k) {
                Book* book = &(closet->books[k]);
                catalog->addString(book->name, "Row:" + std::to_string(row->id) + ", Closet:" + std::to_string(closet->id) + ", Book:" + std::to_string(book->id));
            }
        }
    }
private:
    Row* row;
    Catalog* catalog;
};


int main(int argc, char** argv) {
    if (argc < 2 || argc > 4) {
        std::cout << "Error!";
        exit(1);
    }

    size_t size = 0;
    std::string path;
    std::vector<Row> rows;

    if (!strcmp("-n", argv[1])) {
        size = atoi(argv[2]);
        Constants::N = rand() % 100 + 1;
        Constants::M = rand() % 100 + 1;
        Constants::K = rand() % 100 + 1;
        for (int i = 0; i < Constants::N; ++i) {
            //rows[i].RndIn(i);
        }

        if (argc == 4) {
            path = argv[3];
        }

    } else if (!strcmp("-f", argv[1])) {
        size = 0;
        if (argc < 3) {
            std::cout << "Error";
            exit(1);
        }

        std::string path_in(argv[2]);
        std::ifstream file(path_in);
        Constants::readConstants(file);
        std::cout << "Constants: " << Constants::N << " " << Constants::M << " " << Constants::K << '\n';
        for (int i = 0; i < Constants::N; ++i) {
            rows.push_back(Row());
            rows[i].In(file, i);
        }

        if (argc == 4) {
            path = argv[3];
        }

    }
    std::cout << "Start\n";
    Logger logger(path);
    Catalog catalog(&logger);
    std::vector<Student> students;
    for (int i = 0; i < Constants::N; ++i) {
        students.push_back(Student(&rows[i], &catalog));
    }
    std::cout << "Create catalog\n";
    std::vector<std::thread> threads_;
    for (int i = 0; i < Constants::N; ++i) {
        threads_.emplace_back(&Student::writeCatalogStrings, &students[i]);
    }
    for (int i = 0; i < Constants::N; ++i) {
        threads_[i].join();
    }
    std::cout << "Sorted catalog\n";
    catalog.sort();
    catalog.print();

    std::cout << "End\n";
    return 0;
}