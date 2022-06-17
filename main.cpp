/*
** EDEN PROJECT, 2022
** Eldenbraz
** File description:
** main
*/

#include "main.hpp"
#include <iostream>
#include <string>

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

int main(int ac, char **av)
{
    sf::RenderWindow window(sf::VideoMode(600, 500), "My LoL App (big paz)");

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed || event.key.code == sf::Keyboard::Escape)
                window.close();
        }

        window.clear();
        window.display();
    }
    return (0);
}