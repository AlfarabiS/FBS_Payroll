<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Department;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Department::create([
            'department_id' => 'PRD',
            'department_name' => 'Production',
        ]);

        Department::create([
            'department_id' => 'WHS',
            'department_name' => 'Warehouse',
        ]);

        Department::create([
            'department_id' => 'ENG',
            'department_name' => 'Engineering',
        ]);
        
    }
}
