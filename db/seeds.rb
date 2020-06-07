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
	'AWS'
].each do |tech|
	Tech.create(name: tech)
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

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