#include "ros/ros.h"
#include "my_service/AddInts.h"
bool add(my_service::AddInts:: Request &req,
    my_service::AddInts::Response &res)
{
  res.usd = req.rub/30.185;
  res.eur = req.rub/43.46;
  res.gbp = req.rub/48.688;
  res.ugx = req.rub/0.016;
  ROS_INFO("RUB: %f", req.rub);
  ROS_INFO("USD: %f", res.usd);
  ROS_INFO("EUR: %f", res.eur);
  ROS_INFO("GBP: %f", res.gbp);
  ROS_INFO("UGX: %f", res.ugx);
  return true;
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "old_good_times_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("Enter_RUB", add);
  ROS_INFO("Ready conversion RUB value");
  ros::spin();

  return 0;
}
