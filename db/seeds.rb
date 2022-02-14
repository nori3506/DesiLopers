# frozen_string_literal: true

['HTML',
 'CSS',
 'SCSS',
 'JavaScript',
 'TypeScript',
 'AngularJS',
 'React',
 'Vue.js',
 'Riot.js',
 'jQuery',
 'Node.js',
 'Ruby',
 'Ruby on Rails',
 'Python',
 'Django',
 'Flask',
 'Bottle',
 'Pyramid',
 'Plone',
 'PHP',
 'CakePHP',
 'Laravel',
 'Symfony',
 'codeigniter',
 'FuelPHP',
 'Java',
 'C',
 'C++',
 'C#',
 'Objective-C',
 '.Net',
 'Swift',
 'SQL',
 'MySQL',
 'Oracle',
 'SQL Server',
 'PostgreSQL',
 'SQLite',
 'MariaDB',
 'Git',
 'Docker',
 'Sketch',
 'Adobe XD',
 'Figma',
 'InVision Studio',
 'Photoshop',
 'Illustrator',
 'STUDIO',
 'AWS'].each do |tech|
  Tech.find_or_create_by(name: tech)
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

if Rails.env.development?
  Company.create!(name: 'First Company',
                  status: 'active',
                  slogan: '検索エンジンで世の中をかえる',
                  mission: '世の中を幸せにする。',
                  mission_detail: '世の中を幸せにすることに全力を尽くしてまいります。',
                  overview: '当社はまさに流行りの絶好調IT企業です！私たちの検索エンジンを使えば、世界中のネットワークを利用することができ、大変便利です。今後は世界を狙っていくつもりです。',
                  url: 'https://auctions.yahoo.co.jp/',
                  phone: '0120-444-444',
                  zip: '000-1111',
                  prefecture: '東京都',
                  address: '東京都新宿区３丁目一番地',
                  emp_number: 50,
                  avarage_age: 29,
                  capital: 1_000_000,
                  foundation_date: '2002-10-03 02:05:20.588849')
  Company.create!(name: 'Second Company',
                  status: 'active',
                  slogan: '饅頭を中国にひろめたい。',
                  mission: 'One for All, All for One',
                  mission_detail: '一人はみんなのために、みんなは一人のために！！！暖かい世の中をつくります！',
                  overview: '老舗の飲食店企業です！饅頭を昔から製造しては輸出しています。今後は中国への進出をめざして、グローバル化を加速させています。',
                  url: 'https://yahoo.co.jp/',
                  phone: '0120-333-3333',
                  zip: '222-1111',
                  prefecture: '京都都',
                  address: '京都府五條1丁目1番地',
                  emp_number: 12,
                  avarage_age: 59,
                  capital: 1_000_000_000,
                  foundation_date: '1950-10-23 02:05:20.588849')

  Image.create!(file_name: open('./app/assets/images/office-inside1.jpg'))
  Image.create!(file_name: open('./app/assets/images/office-inside2.jpg'))
  Image.create!(file_name: open('./app/assets/images/office-inside3.jpg'))
  Image.create!(file_name: open('./app/assets/images/office-work.jpg'))
  Image.create!(file_name: open('./app/assets/images/office_building.jpg'))
  Image.create!(file_name: open('./app/assets/images/meeting.jpg'))
  Image.create!(file_name: open('./app/assets/images/meeting-jp.jpg'))
  Image.create!(file_name: open('./app/assets/images/hr-woman.jpg'))
  Image.create!(file_name: open('./app/assets/images/code-screen.jpg'))

  CompanyImage.create!(
    company_id: 1,
    image_id: 1,
    use_purpose: 'main'
  )

  CompanyImage.create!(
    company_id: 2,
    image_id: 5,
    use_purpose: 'main'
  )

  Project.create!(title: 'Deta Analyst Internship',
                  company_id: 1,
                  status: 'stop',
                  background: 'To improve our newwork accessibility and sustainability, senior engineer is needed.',
                  allocation: 'Newwork department',
                  detail: "•Conduct timely geographical analysis of CIR data and produce maps and graphs to track influenza and Covid-19 vaccine doses administered to New Yorkers by health care facilities across NYC.
                            •Works closely with DOHMH research scientists and technical staff to plan, develop, implement, and evaluate protocols and research related to CIR data quality assurance.
                            •Prepare reports and presentations for NYC DOHMH, New York State, and the Centers for Disease Control and Prevention (CDC) on the influenza and Covid-19 vaccination campaigns.
                            •Coordinate data analyses and research efforts using CIR data with other units within BOI, DOHMH, and CDC.
                            •Participate in teleconference calls and meetings with CDC and immunization programs in public health departments in other states and cities.",
                  requirement: '•Master’s Degree in appropriate field, MPH preferred
                                •One year of full-time experience in data analysis
                                •Experience in SQL, SAS or R programming',
                  benefit: 'you can be a member in high level engineer team which you can learn new skills, ',
                  min_salary: 100_000,
                  max_salary: 200_000,
                  number_of_hire: 30,
                  process: '3 times interviews',
                  place: 'Shinjuku, Japan',
                  welfare: 'Stock grants based on vesting schedule, vacation')

  Project.create!(title: 'HR professional is needed ASAP!!!',
                  company_id: 1,
                  status: 'stop',
                  background: 'To improve our newwork accessibility and sustainability, senior engineer is needed.',
                  allocation: 'Newwork department',
                  detail: '•Manage full-cycle recruiting process, from sourcing to offer
                            •Hire candidates across the organization predominantly with a focus on Engineering and Product
                            •Build talent pipelines, build referral generation, create recruiting events and targeted sourcing campaigns
                            •Find, engage, and activate passive candidates.
                            •Provide an efficient and high-touch experience for every candidate from application stage to offer, evaluating skill level, driving the interview process
                            •Communicate effectively with the interview team to ensure preparedness during the interview process.
                            •Facilitate interview and hiring decision-making process with interviewers and hiring managers',
                  requirement: 'Minimum requirment
                            3+ years’ experience in Human Resources function, ideally in a financial services organization
                            Part qualified PHR/SPHR (or similar) or working towards PHR/SPHR qualification, preferred
                            Bachelor’s Degree, preferred
                            Broad technical HR knowledge of employment legislation and practice
                            Strong attention to detail',
                  benefit: 'you can be a member in high level engineer team which you can learn new skills, ',
                  min_salary: 40_000,
                  max_salary: 80_000,
                  number_of_hire: 2,
                  process: '3 times interviews',
                  place: 'Shinjuku, Japan',
                  welfare: 'Stock grants based on vesting schedule, vacation')
  Project.create!(title: 'Experienced Designer',
                  company_id: 1,
                  status: 'done',
                  background: 'To improve our newwork accessibility and sustainability, senior engineer is needed.',
                  allocation: 'Newwork department',
                  detail: "•long with Director of HR, oversee employee relations, working with staff to manage issues expeditiously and thoroughly
                            •Assist with recruiting, interviewing and hiring
                            •Assist with corporate onboarding setup such as requesting MIS equipment, new hire paperwork, desk setup, and partnering with managers for onboarding schedules
                            •Aid in conducting introductory onboarding for all hires by providing an overview on Alexander McQueen’s policies and HR practices
                            •Develop, raise, and recommend changes to HR policies and procedures that align with and support Alexander McQueen’s culture.
                            •Ensure legal compliance in all state’s where business is conducted
                            •Respond to information requests regarding payroll, benefits, and company policies
                            •Maintain and update job requirements and descriptions for all positions
                            •Manage all organizational charts as well as maintain organization of HR shared drive",
                  requirement: "•Bachelor's degree or equivalent experience in Business, Human Resources, or related area.
                                •2-3 years' of experience working in Human Resources
                                •Passion for what you do
                                •Ability to work in a fast-paced environment while being flexible and adaptable
                                •Excellent written and verbal communication skills
                                •Strong empathy and good business judgement
                                •Ability to maintain strict confidentiality
                                •Experience with Microsoft Outlook and Teams a plus
                                •Experience with Workday a plus",
                  benefit: 'you can be a member in high level engineer team which you can learn new skills, ',
                  min_salary: 40_000,
                  max_salary: 80_000,
                  number_of_hire: 2,
                  process: '3 times interviews',
                  place: 'Shinjuku, Japan',
                  welfare: 'Stock grants based on vesting schedule, vacation')
  Project.create!(title: 'Network Engineer is needed ASAP!!!',
                  company_id: 1,
                  status: 'active',
                  background: 'To improve our newwork accessibility and sustainability, senior engineer is needed.',
                  allocation: 'Newwork department',
                  detail: '•Support, troubleshoot, install, and configure routers, and switches and firewalls
                            •Deploy & troubleshoot security protocols across the network platform
                            •Develop and refine network and security configuration documentation for customers
                            •Maintain industry certifications as required
                            •Provide end user training on solutions
                            •Work closely and align with pre-sales engineering objectives when coping larger projects
                            •Assist pre-sales with customer engagements when applicable
                            •Assist in developing, improving, and automating our delivery methodologies
                            •Other business duties as assigned',
                  requirement: 'Minimum requirment
                            •84 months of experience in working on a large network designing, installing, configuring, and supporting Cisco switches & routers, Metro Ethernet, EIGRP, IBGP, EBGP, trunking, Cisco VRFs, VoIP, Video over a LAN\MAN, and QoS.
                            •84 months of experience in configuring and troubleshooting Cisco VPN, Cisco ASA and\or Palo Alto firewalls
                            •84 months of experience in configuring and troubleshooting Cisco VRFs
                            •24 months of experience designing and implementing Multicast
                            •36 months of experience implementing and troubleshooting Cisco wireless LAN networks
                            •36 months of experience effectively leading diverse teams of technical professionals, with the experience to manage and motivate team members to produce quality deliverables while meeting project deadlines
                            •24 months of experience in creating and delivering presentations
                            •12 months of experience using Network Management platforms
                            •Bachelor’s Degree
                            •CCIE Certification - Cisco Certified Internetwork Expert',
                  benefit: 'you can be a member in high level engineer team which you can learn new skills, ',
                  min_salary: 50_000,
                  max_salary: 120_000,
                  number_of_hire: 5,
                  process: '3 times interviews and skill test',
                  place: 'Shinjuku, Japan',
                  welfare: 'Stock grants based on vesting schedule, vacation')
  Project.create!(title: 'Web Application Developer Intern - C#/SQL',
                  company_id: 1,
                  status: 'active',
                  background: "We are a data company, building product catalogs and retail websites for the world's leading car brands to sell parts and accessories to owners, working on their own cars.
                               Our platform team creates the leading edge of that experience, making it easy for folks to find the parts they need.
                               This is a hands-on position, working in short (two week) sprints building big, meaningful things with a direct, immediate and visible impact. ",
                  allocation: 'Programming department',
                  detail: '•Support, troubleshoot, install, and configure routers, and switches and firewalls
                            •Deploy & troubleshoot security protocols across the network platform
                            •Develop and refine network and security configuration documentation for customers
                            •Maintain industry certifications as required
                            •Provide end user training on solutions
                            •Work closely and align with pre-sales engineering objectives when coping larger projects
                            •Assist pre-sales with customer engagements when applicable
                            •Assist in developing, improving, and automating our delivery methodologies
                            •Other business duties as assigned',
                  requirement: "•A Computer Science (CS) degree in progress
                                •Good experience coding in web languages (Microsoft stack preferred, but we're open minded)
                                •Development work you've done outside of work/school.
                                •A drive to learn new things.",
                  benefit: 'you can be a member in high level engineer team which you can learn new skills, ',
                  min_salary: 10_000,
                  max_salary: 20_000,
                  number_of_hire: 5,
                  process: '3 times interviews and skill test',
                  place: 'Shinjuku, Japan',
                  welfare: 'Stock grants based on vesting schedule, vacation')

  Project.create!(title: 'Ruby on Rails Engineer is seeked!!!',
                  company_id: 2,
                  status: 'active',
                  background: 'To improve our newwork accessibility and sustainability, senior engineer is needed.',
                  allocation: 'Newwork department',
                  detail: '・System architecture
                        ・Application architecture
                        ・Feature development
                        ・Effectively and clearly communicating with employees and clients across various channels
                        ・Collaborating with product leaders and technical team members to build the best capabilities with the least amount of work',
                  requirement: '・5-7 years (or more) of technical experience
                                ・Experience owning development, shipping, and maintaining a a functional area of an application
                                ・Expertise with Ruby on Rails and MongoDB
                                ・Comfortable with Angular, AWS and PostGresSQL
                                ・Strong interpersonal, communication, and project management skills
                                ・Love building technology and teams
                                ・Self-motivated, ambitious with an entrepreneurial spirit ',
                  min_salary: 80_000,
                  max_salary: 150_000,
                  number_of_hire: 10,
                  process: '3 times interviews and skill test',
                  place: 'Japan, Kyoto',
                  welfare: 'Stock grants based on vesting schedule, vacation')
  Project.create!(title: 'Ruby on Rails Engineer is seeked!!!',
                  company_id: 2,
                  status: 'active',
                  background: 'To improve our newwork accessibility and sustainability, senior engineer is needed.',
                  allocation: 'Newwork department',
                  detail: '・System architecture
                        ・Application architecture
                        ・Feature development
                        ・Effectively and clearly communicating with employees and clients across various channels
                        ・Collaborating with product leaders and technical team members to build the best capabilities with the least amount of work',
                  requirement: '・5-7 years (or more) of technical experience
                                ・Experience owning development, shipping, and maintaining a a functional area of an application
                                ・Expertise with Ruby on Rails and MongoDB
                                ・Comfortable with Angular, AWS and PostGresSQL
                                ・Strong interpersonal, communication, and project management skills
                                ・Love building technology and teams
                                ・Self-motivated, ambitious with an entrepreneurial spirit ',
                  min_salary: 80_000,
                  max_salary: 150_000,
                  number_of_hire: 10,
                  process: '3 times interviews and skill test',
                  place: 'Japan, Kyoto',
                  welfare: 'Stock grants based on vesting schedule, vacation')

  Project.create!(title: 'React Native Developer',
                  company_id: 2,
                  status: 'stop',
                  background: 'To improve our Application.',
                  allocation: 'Newwork department',
                  detail: '・System architecture
                        ・Application architecture
                        ・Feature development
                        ・Effectively and clearly communicating with employees and clients across various channels
                        ・Collaborating with product leaders and technical team members to build the best capabilities with the least amount of work',
                  requirement: '・5-7 years (or more) of technical experience
                                ・Experience owning development, shipping, and maintaining a a functional area of an application
                                ・Expertise with Ruby on Rails and MongoDB
                                ・Comfortable with Angular, AWS and PostGresSQL
                                ・Strong interpersonal, communication, and project management skills
                                ・Love building technology and teams
                                ・Self-motivated, ambitious with an entrepreneurial spirit ',
                  min_salary: 80_000,
                  max_salary: 150_000,
                  number_of_hire: 10,
                  process: '3 times interviews and skill test',
                  place: 'Japan, Kyoto',
                  welfare: 'Stock grants based on vesting schedule, vacation')

  Project.create!(title: 'UI Engineer',
                  company_id: 2,
                  status: 'done',
                  background: 'To improve our UI and UX.',
                  allocation: 'Engineering department',
                  detail: '・System architecture
                        ・Application architecture
                        ・Feature development
                        ・Effectively and clearly communicating with employees and clients across various channels
                        ・Collaborating with product leaders and technical team members to build the best capabilities with the least amount of work',
                  requirement: '・5-7 years (or more) of technical experience
                                ・Experience owning development, shipping, and maintaining a a functional area of an application
                                ・Expertise with Ruby on Rails and MongoDB
                                ・Comfortable with Angular, AWS and PostGresSQL
                                ・Strong interpersonal, communication, and project management skills
                                ・Love building technology and teams
                                ・Self-motivated, ambitious with an entrepreneurial spirit ',
                  min_salary: 20_000,
                  max_salary: 80_000,
                  number_of_hire: 10,
                  process: '3 times interviews and skill test',
                  place: 'Japan, Kyoto',
                  welfare: 'Stock grants based on vesting schedule, vacation')

  ProjectImage.create!(
    project_id: 1,
    image_id: 2,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 2,
    image_id: 3,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 3,
    image_id: 4,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 4,
    image_id: 6,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 5,
    image_id: 7,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 6,
    image_id: 8,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 7,
    image_id: 9,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 8,
    image_id: 5,
    use_purpose: 'main'
  )

  ProjectImage.create!(
    project_id: 9,
    image_id: 1,
    use_purpose: 'main'
  )

end

if Rails.env.development?
  User.create!(name: 'FirstCompanyの社員 1', email: 'a@aaa.aaa', password: 'aaaaaaaa', company_id: 1, confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: 'FirstCompanyの社員 2', email: 'b@aaa.aaa', password: 'aaaaaaaa', company_id: 1, confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: 'FirstCompanyの社員 3', email: 'c@aaa.aaa', password: 'aaaaaaaa', company_id: 1, confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: 'SecondCompanyの社員 1', email: 'a@bbb.bbb', password: 'aaaaaaaa', company_id: 2, confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: 'SecondCompanyの社員 2', email: 'b@bbb.bbb', password: 'aaaaaaaa', company_id: 2, confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: 'SecondCompanyの社員 3', email: 'c@bbb.bbb', password: 'aaaaaaaa', company_id: 2, confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: '一般ユーザー　1', email: 'a@ccc.ccc', password: 'aaaaaaaa', confirmed_at: '2020-08-01 02:19:44')
  User.create!(name: '一般ユーザー　2', email: 'b@ccc.ccc', password: 'aaaaaaaa', confirmed_at: '2020-08-01 02:19:44')
end

category = [
  {
    id: 1,
    name: 'ITエンジニア',
    sequence: 7
  },
  {
    id: 2,
    name: 'クリエイティブ',
    sequence: 5
  },
  {
    id: 3,
    name: '経営・企画',
    sequence: 1
  },
  {
    id: 4,
    name: '営業',
    sequence: 2
  },
  {
    id: 5,
    name: '経理・人事・管理',
    sequence: 3
  },
  {
    id: 6,
    name: 'Web・インターネット',
    sequence: 4
  },
  {
    id: 7,
    name: '専門職',
    sequence: 6
  },
  {
    id: 8,
    name: 'エンジニア',
    sequence: 8
  },
  {
    id: 9,
    name: 'サービス・販売・外食',
    sequence: 9
  },
  {
    id: 10,
    name: '素材・化学・食品',
    sequence: 10
  },
  {
    id: 11,
    name: '建築・住宅',
    sequence: 11
  },
  {
    id: 12,
    name: '医療・福祉・介護',
    sequence: 12
  },
  {
    id: 13,
    name: '教育・公務員・団体職員',
    sequence: 13
  },
  {
    id: 14,
    name: '農林水産',
    sequence: 14
  },
  {
    id: 9999,
    name: 'その他',
    sequence: 15
  }
]

job = [
  {
    id: 28,
    name: '経営・団体運営',
    sequence: 1,
    job_category_id: 3
  },
  {
    id: 30,
    name: 'IPO・M&A',
    sequence: 2,
    job_category_id: 3
  },
  {
    id: 35,
    name: '新規事業企画・開発',
    sequence: 3,
    job_category_id: 3
  },
  {
    id: 23,
    name: '商品企画・開発',
    sequence: 4,
    job_category_id: 3
  },
  {
    id: 12,
    name: 'プロデューサー・ディレクター',
    sequence: 5,
    job_category_id: 3
  },
  {
    id: 13,
    name: 'マーケティング',
    sequence: 6,
    job_category_id: 3
  },
  {
    id: 24,
    name: 'バイヤー・MD',
    sequence: 7,
    job_category_id: 3
  },
  {
    id: 27,
    name: 'イベントプロデューサー',
    sequence: 8,
    job_category_id: 3
  },
  {
    id: 31,
    name: 'ソーシャルビジネス運営',
    sequence: 9,
    job_category_id: 3
  },
  {
    id: 15,
    name: 'セールス',
    sequence: 10,
    job_category_id: 4
  },
  {
    id: 38,
    name: '企画営業',
    sequence: 11,
    job_category_id: 4
  },
  {
    id: 39,
    name: '法人営業',
    sequence: 12,
    job_category_id: 4
  },
  {
    id: 40,
    name: '個人営業',
    sequence: 13,
    job_category_id: 4
  },
  {
    id: 41,
    name: '代理店営業',
    sequence: 14,
    job_category_id: 4
  },
  {
    id: 29,
    name: '経理・財務',
    sequence: 15,
    job_category_id: 5
  },
  {
    id: 33,
    name: '広報・IR',
    sequence: 16,
    job_category_id: 5
  },
  {
    id: 34,
    name: 'HR・人事',
    sequence: 17,
    job_category_id: 5
  },
  {
    id: 42,
    name: '事務',
    sequence: 18,
    job_category_id: 5
  },
  {
    id: 43,
    name: 'Webコンサルタント',
    sequence: 19,
    job_category_id: 6
  },
  {
    id: 16,
    name: 'Webプロデューサー・ディレクター',
    sequence: 20,
    job_category_id: 6
  },
  {
    id: 17,
    name: 'Webマーケティング',
    sequence: 21,
    job_category_id: 6
  },
  {
    id: 44,
    name: 'Web編集・コンテンツ企画',
    sequence: 22,
    job_category_id: 6
  },
  {
    id: 45,
    name: 'クリエイティブディレクター',
    sequence: 23,
    job_category_id: 2
  },
  {
    id: 6,
    name: 'UI/UXデザイナー',
    sequence: 24,
    job_category_id: 2
  },
  {
    id: 7,
    name: 'HTMLコーダー',
    sequence: 25,
    job_category_id: 2
  },
  {
    id: 19,
    name: 'ゲームデザイナー',
    sequence: 26,
    job_category_id: 2
  },
  {
    id: 8,
    name: 'グラフィックデザイナー',
    sequence: 27,
    job_category_id: 2
  },
  {
    id: 9,
    name: 'DTPデザイナー',
    sequence: 28,
    job_category_id: 2
  },
  {
    id: 10,
    name: 'イラストレーター',
    sequence: 29,
    job_category_id: 2
  },
  {
    id: 46,
    name: '店舗・空間デザイナー',
    sequence: 30,
    job_category_id: 2
  },
  {
    id: 47,
    name: 'プロダクトデザイナー',
    sequence: 31,
    job_category_id: 2
  },
  {
    id: 11,
    name: 'その他デザイナー',
    sequence: 32,
    job_category_id: 2
  },
  {
    id: 20,
    name: '編集',
    sequence: 33,
    job_category_id: 2
  },
  {
    id: 14,
    name: 'ライター',
    sequence: 34,
    job_category_id: 2
  },
  {
    id: 21,
    name: 'カメラマン',
    sequence: 35,
    job_category_id: 2
  },
  {
    id: 22,
    name: '映像制作・編集',
    sequence: 36,
    job_category_id: 2
  },
  {
    id: 48,
    name: 'スタイリスト',
    sequence: 37,
    job_category_id: 2
  },
  {
    id: 49,
    name: 'カラーコーディネーター',
    sequence: 38,
    job_category_id: 2
  },
  {
    id: 50,
    name: 'キャリアカウンセラー',
    sequence: 39,
    job_category_id: 7
  },
  {
    id: 51,
    name: 'ビジネスコンサルタント',
    sequence: 40,
    job_category_id: 7
  },
  {
    id: 52,
    name: '公認会計士',
    sequence: 41,
    job_category_id: 7
  },
  {
    id: 37,
    name: '税理士',
    sequence: 42,
    job_category_id: 7
  },
  {
    id: 36,
    name: '弁護士',
    sequence: 43,
    job_category_id: 7
  },
  {
    id: 53,
    name: '司法書士',
    sequence: 44,
    job_category_id: 7
  },
  {
    id: 54,
    name: '行政書士',
    sequence: 45,
    job_category_id: 7
  },
  {
    id: 55,
    name: '社会保険労務士',
    sequence: 46,
    job_category_id: 7
  },
  {
    id: 56,
    name: '中小企業診断士',
    sequence: 47,
    job_category_id: 7
  },
  {
    id: 57,
    name: 'ファイナンシャルプランナー',
    sequence: 48,
    job_category_id: 7
  },
  {
    id: 58,
    name: '金融関連',
    sequence: 49,
    job_category_id: 7
  },
  {
    id: 1,
    name: 'バックエンドエンジニア',
    sequence: 50,
    job_category_id: 1
  },
  {
    id: 2,
    name: 'フロントエンドエンジニア',
    sequence: 51,
    job_category_id: 1
  },
  {
    id: 3,
    name: 'アプリエンジニア',
    sequence: 52,
    job_category_id: 1
  },
  {
    id: 4,
    name: 'インフラエンジニア',
    sequence: 53,
    job_category_id: 1
  },
  {
    id: 18,
    name: 'ゲームエンジニア',
    sequence: 54,
    job_category_id: 1
  },
  {
    id: 5,
    name: 'その他エンジニア',
    sequence: 55,
    job_category_id: 1
  },
  {
    id: 59,
    name: '機械・電気エンジニア',
    sequence: 56,
    job_category_id: 8
  },
  {
    id: 60,
    name: '電子・半導体エンジニア',
    sequence: 57,
    job_category_id: 8
  },
  {
    id: 61,
    name: '素材・化学エンジニア',
    sequence: 58,
    job_category_id: 8
  },
  {
    id: 62,
    name: '建築・土木エンジニア',
    sequence: 59,
    job_category_id: 8
  },
  {
    id: 63,
    name: '品質・生産管理',
    sequence: 60,
    job_category_id: 8
  },
  {
    id: 64,
    name: 'セールスエンジニア',
    sequence: 61,
    job_category_id: 8
  },
  {
    id: 25,
    name: '店舗開発・運営',
    sequence: 62,
    job_category_id: 9
  },
  {
    id: 65,
    name: '店長',
    sequence: 63,
    job_category_id: 9
  },
  {
    id: 66,
    name: '販売スタッフ',
    sequence: 64,
    job_category_id: 9
  },
  {
    id: 67,
    name: '素材・化学関連',
    sequence: 65,
    job_category_id: 10
  },
  {
    id: 68,
    name: '化粧品関連',
    sequence: 66,
    job_category_id: 10
  },
  {
    id: 69,
    name: '食品関連',
    sequence: 67,
    job_category_id: 10
  },
  {
    id: 70,
    name: '美容・ヘルスケア関連',
    sequence: 68,
    job_category_id: 10
  },
  {
    id: 71,
    name: '建築関連',
    sequence: 69,
    job_category_id: 11
  },
  {
    id: 72,
    name: 'リフォームコーディネーター',
    sequence: 70,
    job_category_id: 11
  },
  {
    id: 73,
    name: 'インテリアデザイナー',
    sequence: 71,
    job_category_id: 11
  },
  {
    id: 74,
    name: 'インテリアコーディネーター',
    sequence: 72,
    job_category_id: 11
  },
  {
    id: 26,
    name: 'オフィス開発・プロデュース',
    sequence: 73,
    job_category_id: 11
  },
  {
    id: 32,
    name: '不動産関連',
    sequence: 74,
    job_category_id: 11
  },
  {
    id: 75,
    name: '医療関連',
    sequence: 75,
    job_category_id: 12
  },
  {
    id: 76,
    name: 'カウンセラー',
    sequence: 76,
    job_category_id: 12
  },
  {
    id: 77,
    name: '介護士',
    sequence: 77,
    job_category_id: 12
  },
  {
    id: 78,
    name: '栄養士',
    sequence: 78,
    job_category_id: 12
  },
  {
    id: 79,
    name: '教師、講師',
    sequence: 79,
    job_category_id: 13
  },
  {
    id: 80,
    name: 'インストラクター',
    sequence: 80,
    job_category_id: 13
  },
  {
    id: 81,
    name: '通訳、翻訳者',
    sequence: 81,
    job_category_id: 13
  },
  {
    id: 82,
    name: '公務員',
    sequence: 82,
    job_category_id: 13
  },
  {
    id: 83,
    name: '団体職員',
    sequence: 83,
    job_category_id: 13
  },
  {
    id: 84,
    name: 'NPO・NGO職員',
    sequence: 84,
    job_category_id: 13
  },
  {
    id: 85,
    name: '農業',
    sequence: 85,
    job_category_id: 14
  },
  {
    id: 86,
    name: '林業',
    sequence: 86,
    job_category_id: 14
  },
  {
    id: 87,
    name: '畜産業',
    sequence: 87,
    job_category_id: 14
  },
  {
    id: 88,
    name: '水産業',
    sequence: 88,
    job_category_id: 14
  },
  {
    id: 9999,
    name: 'その他',
    sequence: 9999,
    job_category_id: 9999
  }
]

category.each do |c|
  JobCategory.find_or_create_by c
end

job.each do |j|
  job = Job.find_or_initialize_by(id: j[:id])
  job.sequence = j[:sequence]
  job.name     = j[:name]
  job.job_category_id = j[:job_category_id]
  job.save!
end

emp_types = [
  {
    id: 1,
    name: '正社員'
  },
  {
    id: 2,
    name: 'アルバイト・パート'
  },
  {
    id: 3,
    name: '派遣社員'
  },
  {
    id: 4,
    name: '契約社員'
  },
  {
    id: 5,
    name: '業務委託'
  },
  {
    id: 6,
    name: '請負'
  },
  {
    id: 7,
    name: '嘱託社員'
  },
  {
    id: 8,
    name: '新卒'
  },
  {
    id: 9,
    name: 'インターンシップ'
  },
  {
    id: 10,
    name: 'ボランティア'
  }
]

emp_types.each do |et|
  emp_type = EmpType.find_or_initialize_by(id: et[:id])
  emp_type.name = et[:name]
  emp_type.save!
end