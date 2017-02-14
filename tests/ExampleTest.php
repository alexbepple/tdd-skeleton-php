<?php

use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    public function testSomething() 
    {
        assertThat('a', is('a'));
    }
}

