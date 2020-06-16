﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using NashvilleTheatre.DataAccess;

namespace NashvilleTheatre.Controllers
{
    [Route("api/category")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        CategoryRepository _categoryRepository;

        public CategoryController(CategoryRepository repository)
        {
            _categoryRepository = repository;
        }

        [HttpGet]
        public IActionResult GetAllCategories()
        {
            var categories = _categoryRepository.GetAllCategories();
            return Ok(categories);
        }

        [HttpGet("{category}")]
        public IActionResult GetSummaryByCategory(string category)
        {
            var summary = _categoryRepository.GetCategorySummariesNew(category);
            return Ok(summary);
        }
    }
}