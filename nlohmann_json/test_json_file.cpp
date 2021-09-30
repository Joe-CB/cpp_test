// json 文件存在异常，来出来可以直接测试
#include <iostream>
#include <fstream>
#include "include/json.hpp"

using json = nlohmann::json;
using type_error = nlohmann::detail::type_error;
using parser_error = nlohmann::detail::parse_error;



bool test_mpp_datadiff(json j)
{
    json data = j["data"];
    json data_list = data["data_list"];
    for (int i = 0; i < data_list.size(); i++){
        int partition_id = data_list[i]["partition_id"];
        std::cout << partition_id << std::endl;
    }
}


json load_file(std::string path){
    json j;
    std::ifstream i(path);
    if (i.is_open()){
        i >> j; 
    } else {
        std::cout << "open file error!" << std::endl;
    }
    
    return j;
}

int main(){
    json j = load_file("./test_data/rapidjson_out.json");
    test_mpp_datadiff(j);
    return 0;
}