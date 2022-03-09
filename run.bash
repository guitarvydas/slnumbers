#!/bin/bash

prep=./prep/prep

echo 'in-->out'
$prep '.' '$' batch-edit-4.ohm identity-batch-edit-4.glue --stop=1 < test.txt

echo '4-->(quote 4)'
$prep '.' '$' batch-edit-4.ohm batch-edit-4.glue --stop=1 < test.txt
