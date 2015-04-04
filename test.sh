#!/usr/bin/env bash
jekyll build

ln -s ../../ISS-photo-locations/_site/ _site/ISS-photo-locations
ln -s ~/CAD/NASA-switch-guard/_site/ _site/NASA-switch-guard
ln -s ../../Rocket-Clubs/_site/ _site/Rocket-Clubs
ln -s ../../science-hack-day-2014/_site/ _site/science-hack-day-2014
ln -s ../../space-phrase/_site/ _site/space-phrase
