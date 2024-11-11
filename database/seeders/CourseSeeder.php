<?php

namespace Database\Seeders;

use App\Models\Course;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Course::factory()->createMany([
            [
                'category_id' => 1,
                'course_name' => 'Human and Computer Interaction',
            ],
            [
                'category_id' => 1,
                'course_name' => 'User Experience',
            ],
            [
                'category_id' => 1,
                'course_name' => 'User Experience for Digital Immersive Technology',
            ],
            [
                'category_id' => 2,
                'course_name' => 'Pattern Software Design',
            ],
            [
                'category_id' => 2,
                'course_name' => 'Agile Software Development',
            ],
            [
                'category_id' => 2,
                'course_name' => 'Code Reengineering',
            ]
        ]);
    }
}
