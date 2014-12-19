shinyUI(pageWithSidebar(
    headerPanel("Calculate your BMI"),
    sidebarPanel(
        numericInput('id1', 'Insert your Weight (Kilograms):', 0, min = 1, max = 999, step = 1),
        numericInput('id2', 'Insert your Height (Centimeters):', 1, min = 1, max = 999, step = 1),
        h4('How to use:'),
        h5('Insert your Weight in kilograms and your Height in centimeters and see which category fits you.')
    ),
    mainPanel(
        h3('Your BMI:'),
        verbatimTextOutput("bmi"),
        h4('BMI Categories:'),
        h5('Underweight = <18.5'),
        h5('Normal weight = 18.5-24.9'),
        h5('Overweight = 25-29.9'),
        h5('Obesity = BMI of 30 or greater')
    )
))