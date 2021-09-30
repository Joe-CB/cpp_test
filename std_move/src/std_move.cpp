#include <iostream>
#include  <utility>



// 下面定义一个构造函数比较全的类
class ManagerFull{      
public:
ManagerFull(){
    std::cout<<"this call a constructor."<<std::endl;
}

ManagerFull ( const ManagerFull & ){
    std::cout<<"this call a copy-constructor."<<std::endl;
}
ManagerFull ( ManagerFull && ){
    std::cout<<"this call a move-constructor."<<std::endl;
}
ManagerFull & operator= (const ManagerFull &o){
    std::cout<<"this call a assignment-constructor."<<std::endl;
}
ManagerFull & operator= ( ManagerFull && o){
    std::cout<<"this call a move-assignment-constructor."<<std::endl;
}

private:
    int k=10;
};

// 什么时候会引发移动语义
// 什么时候不会引发移动语义
// 函数返回类型时的移动语义

void return_type(){
    std::cout<<"-------------start std::move return type analysis-------------"<<std::endl;
    ManagerFull manager_0, manager_1;
    ManagerFull &&right_ref_0 = std::move(manager_0);
    ManagerFull manager_2(right_ref_0);
    ManagerFull manager_3(std::move(manager_1));
    std::cout<<"------------end std::move return type analysis--------------"<<std::endl;
}

void analysis(){

}


int main(){
    // constructor
    std::cout<<"-------------In Construction Step-------------"<<std::endl;
    ManagerFull manager_0;
    ManagerFull manager_1;           
    // 创建一个右值引用。注意：一个对象被std::move后原则上不应该再次使用该变量，对其进行任何操作导致的结果将是未知
    ManagerFull manager_2 = manager_1;                      // 使用左值赋值——call copy-constructor
    ManagerFull manager_3(manager_1);                       // 使用左值构造——call copy-constructor
    auto right_ref_0 = std::move(manager_0);                // 返回 ManagerFull &，不调用任何构造函数
    ManagerFull &&right_ref_1 = std::move(manager_1);       // 返回 ManagerFull &，不调用任何构造函数
    ManagerFull manager_4(right_ref_0);                     // call copy-constructor
    ManagerFull manager_5 = right_ref_1;                    // call copy-constructor
    ManagerFull manager_6(std::move(manager_4));            // call move-constructor
    std::cout<<"------------In assignment Step--------------"<<std::endl;
    // 我们使用上一步够早的 manager_2 和 manager_3
    ManagerFull &&right_ref_2 = std::move(manager_2);
    ManagerFull manager_11, manager_12;
    manager_11 = right_ref_2;
    manager_12 = std::move(manager_3);
    

    return_type();
    

    // m_full2 = m_full;
    // ManagerFull m_full5 = std::move(m_full4);
    // ManagerFull m_full6 = m_full5;
}