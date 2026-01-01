import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Background color from the screenshot (approximate dark theme)
    const backgroundColor = Color(0xFF121212);
    const accentBlue = Color(0xFF3B82F6); // Blue button color

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            // Handle back navigation
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                '2026년 1월 첫째 주',
                style: GoogleFonts.notoSansKr(
                  color: Colors.grey[400],
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '경제퀴즈에 도전하세요',
                style: GoogleFonts.notoSansKr(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '퀴즈 참여자 중 다섯 분께 치킨 브랜드콘을 보내드려요.',
                style: GoogleFonts.notoSansKr(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 40),
              // Image Placeholder - Chicken
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD56F), // Yellowish background circle
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.network(
                      'https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Food/Poultry%20Leg.png',
                      // Using a poultry leg emoji as a placeholder for the chicken
                      width: 150,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.fastfood, size: 100, color: Colors.brown),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              _buildBulletPoint('경제퀴즈 치킨 이벤트는 사전 고지 없이 변경되거나 취소될 수 있어요.'),
              const SizedBox(height: 12),
              _buildBulletPoint('당첨자는 이벤트 종료 후 다음 주 월요일에 따로 안내드려요.'),
              const SizedBox(height: 12),
              _buildBulletPoint('약관에 동의하면 새 글 알림을 보내드려요.'),
              const SizedBox(height: 12),
              _buildBulletPoint('약관에 동의한 사람만 아티클 전문을 읽을 수 있어요.'),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Start Quiz
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: accentBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    '정답에 도전하기',
                    style: GoogleFonts.notoSansKr(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '• ',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.notoSansKr(
              color: Colors.grey[400],
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
