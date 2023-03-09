using namespace std;
#include <iostream>

#include <fstream>
#include <nlohmann/json.hpp>
using json = nlohmann::json;

int ImplementYRTST;
int HPVvacc;
int BOYSvacc;
int RoutineScreening; 

int main(){
std::ifstream f("CCPreventionStrategiesJ.json");
json data = json::parse(f);

data.at("ImplementYR").get_to(ImplementYRTST);
data.at("HPVvacc").get_to(HPVvacc);
data.at("BOYSvacc").get_to(BOYSvacc);
data.at("RoutineScreening").get_to(RoutineScreening);

std::cout << ImplementYRTST << std::endl;
std::cout << HPVvacc << std::endl;
std::cout << BOYSvacc << std::endl;
std::cout << RoutineScreening << std::endl;



}