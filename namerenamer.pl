#!/usr/bin/env perl

rename 's/(app.log.\d+)_0.log/$1.log/' app.log*_0.log
rename 's/(game.\d+)_0.log/$1.log/'game*_0.log
