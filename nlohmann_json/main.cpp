#include <iostream>
#include "include/json.hpp"

using json = nlohmann::json;
using type_error = nlohmann::detail::type_error;
using parser_error = nlohmann::detail::parse_error;

json j2 = {
  {"pi", 3.141},
  {"happy", true},
  {"name", "Niels"},
  {"nothing", nullptr},
  {"answer", {
    {"everything", 42}
  }},
  {"list", {1, 0, 2}},
  {"object", {
    {"currency", "USD"},
    {"value", 42.99}
  }}
};

int main(){
    int pi = j2["pi"];
    std::cout << pi << std::endl;
    
    // Inconsistent data types 
    try{
        std::string pi_str = j2["pi"];
        std::cout << pi_str << std::endl;
    } catch (type_error e){
        std::cout << e.what() << std::endl;
        std::cout << "exception string: " << j2["pi"] << std::endl;
    }

    //  Access unavailable fields 
    try {
            int not_contain = j2["no_key"];
    }  catch (type_error e){
        std::cout << e.what() << std::endl;
        std::cout << "exception string: " << j2["pi"] << std::endl;
    }

    // parser error
    try {
        auto j3 = json::parse(R"({"happy": true, "pi": 3.141, 10})");
    }  catch (parser_error e){
        std::cout << e.what() << std::endl;
        // std::cout << "exception string: " << j2["pi"] << std::endl;
    }

    // test load file error;


    return 0;
}