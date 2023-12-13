<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Salary;

class SalarySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Salary::create([
            'salary' => '22500',
            'title_id' => 'MGR',
            'department_id' => 'ENG',
        ]);
        
        Salary::create([
            'salary' => '21250',
            'title_id' => 'SPV',
            'department_id' => 'ENG',
        ]);
        Salary::create([
            'salary' => '20000',
            'title_id' => 'OPT',
            'department_id' => 'ENG',
        ]);

        Salary::create([
            'salary' => '22500',
            'title_id' => 'MGR',
            'department_id' => 'WHS',
        ]);
        
        Salary::create([
            'salary' => '21250',
            'title_id' => 'SPV',
            'department_id' => 'WHS',
        ]);
        Salary::create([
            'salary' => '20000',
            'title_id' => 'OPT',
            'department_id' => 'WHS',
        ]);
        Salary::create([
            'salary' => '22500',
            'title_id' => 'MGR',
            'department_id' => 'PRD',
        ]);
        
        Salary::create([
            'salary' => '21250',
            'title_id' => 'SPV',
            'department_id' => 'PRD',
        ]);
        Salary::create([
            'salary' => '20000',
            'title_id' => 'OPT',
            'department_id' => 'PRD',
        ]);

    }
}
