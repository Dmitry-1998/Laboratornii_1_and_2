#include "ros/ros.h"
#include "my_service/AddInts.h"
#include <iostream>
int main(int argc, char **argv)
{
  ros::init(argc, argv, "old_good_times_publisher");
  
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<my_service::AddInts> ("Enter_RUB");
  my_service::AddInts srv;
  
  while (ros::ok()) {
  int a;
  std:: cout << "input the value RUB: ";
  std::cin >> a;
  
  srv.request.rub = a;
  
  if (client. call(srv)) {
  std:: cout << "USD = " << srv.response.usd << std::endl;
  std:: cout << "EUR = " << srv.response.eur << std::endl;
  std:: cout << "GBP = " << srv.response.gbp << std::endl;
  std:: cout << "UGX = " << srv.response.ugx << std::endl;
  }
  else {
  std:: cout << "Failed to call service old_good_times" << std::endl;
  return 1;
  }
}
  return 0;
}
