#ifndef MANAGER_H
#define MANAGER_H

#include <QObject>
#include "include/farmer.hpp"
#include "include/shop.hpp"
//#include "include/help_functions.hpp"

class Manager : public QObject
{
    Q_OBJECT
public:
     Manager(QObject *parent = nullptr);

private:
     QString farm_sources[7];
    farmer me;
    std::vector<vegtebale>myFarm;
    SHOP theShop;

signals:

public slots:
    bool change_name(QString);

    int get_veg_type(int);
    void use_farm(int , int);
    void water_veg(int);
    QString get_farm_source(int);

    bool is_crop_time(int);
    bool is_water_time(int);
    int get_water_time(int);
    int get_crop_time(int);

    bool seed_exist_in_bag(QString);
    bool veg_exist_in_bag(QString);
    bool is_tools_exist(QString);

    int get_veg_price(QString);
    int get_seed_price(QString);
    int get_tools_price(QString , int);

    bool buy_seed(QString);
    bool buy_tools(QString , int);
    void sell_veg(QString);

};

#endif // MANAGER_H
