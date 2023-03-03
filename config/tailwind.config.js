const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
    purge: {
        enabled: process.env.NODE_ENV === "production",
        content: [
            "./public/**/*.html",
            "./src/**/*.{js,jsx,ts,tsx,vue}",
            "./app/**/*.html.erb",
            "./app/**/*.html.haml",
            "./app/**/*.html.slim",
            "./app/**/*.js",
        ],
    },
    theme: {
        extend: {
            fontFamily: {
                sans: ["Inter var", ...defaultTheme.fontFamily.sans],
            },
        },
    },
    variants: {},
    plugins: [
        require("@tailwindcss/forms"),
        require("@tailwindcss/aspect-ratio"),
        require("@tailwindcss/typography"),
    ],
};
