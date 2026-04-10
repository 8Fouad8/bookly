def calculate_flexible_revenue(years, initial_monthly_deposit, annual_interest_rate, annual_increase_rate):
    # i = الفائدة الشهرية كمعامل عشري
    i = (annual_interest_rate / 100) / 12
    # increase_factor = معامل الزيادة السنوية (مثلاً 1.10 لو الزيادة 10%)
    increase_factor = 1 + (annual_increase_rate / 100)
    
    current_monthly_deposit = initial_monthly_deposit
    total_balance = 0
    revenue_by_year = []

    for year in range(1, years + 1):
        # في كل سنة، بنمشي 12 شهر بالمبلغ الشهري الحالي
        for month in range(12):
            # إضافة الفائدة للمبلغ الموجود أصلاً + إضافة الإيداع الجديد
            total_balance = (total_balance * (1 + i)) + current_monthly_deposit
        
        # حفظ صافي الرصيد في نهاية السنة
        revenue_by_year.append(round(total_balance, 2))
        
        # زيادة المبلغ الشهري للسنة اللي بعدها
        current_monthly_deposit *= increase_factor
        
    return revenue_by_year

# تجربة: 5000 جنيه، فائدة 24%، وزيادة سنوية في الادخار 10%
years_to_plan = 5
results = calculate_flexible_revenue(years_to_plan, 10000, 40, 0)

print(f"{'Year':<10} | {'Total Balance':<15}")
print("-" * 30)
for year, amount in enumerate(results, 1):
    print(f"Year {year:<6} | {amount:,.2f} EGP")
    
    
    
    
# Feature 1: Calculate the total balance for a fixed monthly deposit with a fixed annual interest rate and no increase in deposit.
# Feature 2: Calculate the total balance for a fixed monthly deposit with a fixed annual interest rate and a fixed annual increase in deposit.
# Feature 3: Calculate the total if I Deposit bulk amount at the beginning only with a fixed annual interest rate and no increase in deposit.
# Feature 4: Calculate the total if I Deposit bulk amount at the beginning and  a fixed monthly deposit with a fixed annual interest rate and a fixed annual increase in deposit.(like 200K at the beginning and 10K monthly with fixed annual interest rate what will be the total after the chosen number of years?)
