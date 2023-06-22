//
//  SettingsView.swift
//  Carrie Noni
//
//  Created by Deangelo Stewart on 5/31/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
           List(settingList) { settingList in
               NavigationLink{
                   SettingsDetail()
               } label: {
                   Text(settingList.label)
               }
           }
           // -------------- Setting up clickable list options ------------
           Button("Dismiss") {
               dismiss()
           }
           .font(.title)
       }
}

struct SettingsDetail: View {
    var body: some View {
        Text("Hello, World!")
    }
}


struct SettingsDetail_Previews: PreviewProvider {
    static var previews: some View {
        SettingsDetail()
    }
}


struct SettingLabel: Identifiable{
    let id = UUID()
    var label: String
    var description: String
}

var settingList = [

    SettingLabel(label: "Privacy", description: """
                 Privacy Policy for Carrie Noni App,
                 
                 Effective Date: 6/2/23

                 Thank you for using the Carrie Noni App (referred to as "the App"). This Privacy Policy outlines how we collect, use, disclose, and safeguard your personal information when you access or use our App. Please read this Privacy Policy carefully to understand our practices regarding your personal information.

                 Information We Collect
                 1.1 Personal Information
                 We may collect personal information that you voluntarily provide to us when using the App. This may include:

                 Contact information such as your name, email address, and phone number.
                 Profile information such as your username, profile picture, and any other information you choose to provide.
                 Payment information necessary for processing any purchases or transactions made within the App.
                 Communications and interactions you have with us or other users through the App, including messages and chat history.
                 Information you provide when participating in surveys, contests, or promotions conducted by us.
                 1.2 Usage and Device Information
                 We may also automatically collect certain information about your usage of the App and the device you use to access it. This may include:

                 Device information such as your device type, operating system, and unique device identifiers.
                 Log data, including IP addresses, browser type, pages visited, and access times.
                 Usage data, such as the features you use, the actions you take, and the frequency and duration of your activities within the App.
                 Location information if you grant us permission to collect it.
                 Use of Information
                 We may use the collected information for the following purposes:

                 To provide and improve the App's functionality and user experience.
                 To process your transactions and fulfill your requests for products or services.
                 To communicate with you, respond to your inquiries, and provide customer support.
                 To personalize and customize your experience within the App.
                 To send you promotional materials, updates, and other relevant information, with your consent where required by applicable laws.
                 To monitor and analyze trends, usage, and activities in connection with the App.
                 To detect, prevent, and address technical issues, fraud, or other illegal activities.
                 To comply with applicable laws, regulations, or legal processes.
                 Disclosure of Information
                 We may disclose your personal information in the following circumstances:

                 To third-party service providers who assist us in operating, maintaining, and enhancing the App.
                 To comply with legal obligations, such as responding to a court order or other lawful requests for information.
                 To protect our rights, property, or safety, as well as the rights, property, or safety of our users or others.
                 With your consent or at your direction.
                 Data Security
                 We take appropriate technical and organizational measures to protect the security of your personal information. However, please note that no method of transmission over the internet or method of electronic storage is 100% secure.

                 Your Choices
                 You can control and manage your personal information through the settings within the App. You may also choose to opt-out of receiving promotional communications from us.

                 Children's Privacy
                 The App is not intended for individuals under the age of [insert minimum age]. We do not knowingly collect or solicit personal information from children. If you believe that we may have collected personal information from a child without appropriate consent, please contact us.

                 Changes to This Privacy Policy
                 We reserve the right to modify this Privacy Policy at any time. Any changes will be effective immediately upon posting the updated Privacy Policy within the App. We encourage you to review this Privacy Policy periodically.

                 Contact Us
                 If you have any questions or concerns about this Privacy Policy or our privacy practices, please contact us at [insert contact details].

                 By using the Carrie Noni App, you signify your acceptance of this Privacy Policy. If you do not




"""),
    
    SettingLabel(label: "Terms & Conditions", description: """
        
        Terms and Conditions for Carrie Noni App

        Effective Date: 6/2/23

        Please read these Terms and Conditions ("Terms") carefully before using the Carrie Noni App (referred to as "the App"). These Terms outline the rules and regulations for the use of the App. By accessing or using the App, you agree to be bound by these Terms. If you do not agree with any part of these Terms, you may not use the App.

        Applicability and Acceptance
        1.1 Applicability
        These Terms apply to all users of the Carrie Noni App, including but not limited to individuals, entities, and organizations.

        1.2 Acceptance
        By using the App, you represent and warrant that you have the legal capacity to enter into these Terms. If you are using the App on behalf of an entity or organization, you represent and warrant that you have the authority to bind such entity or organization to these Terms.

        Use of the App
        2.1 License
        Subject to your compliance with these Terms, we grant you a limited, non-exclusive, non-transferable, and revocable license to use the App for personal, non-commercial purposes.

        2.2 Prohibited Activities
        When using the App, you agree not to:

        Violate any applicable laws, regulations, or third-party rights.
        Use the App in any manner that may interfere with its normal operation or impair the experience of other users.
        Engage in any unauthorized access, tampering, or hacking.
        Collect or store personal information of other users without their consent.
        Transmit any viruses, malware, or harmful code.
        Use the App for any illegal, fraudulent, or unauthorized purposes.
        Intellectual Property
        3.1 Ownership
        The App and all its contents, including but not limited to text, graphics, logos, images, software, and other materials, are owned by or licensed to us and are protected by intellectual property laws.

        3.2 Restrictions
        Except as expressly permitted by these Terms, you may not reproduce, modify, distribute, transmit, display, perform, or create derivative works of any content from the App without our prior written consent.

        Disclaimer of Warranties
        4.1 No Warranty
        The App is provided on an "as is" and "as available" basis, without any warranties or conditions, expressed or implied. We do not warrant that the App will be uninterrupted, error-free, or secure.

        4.2 Use at Your Own Risk
        You acknowledge and agree that your use of the App is at your own risk, and we shall not be responsible for any damages, losses, or liabilities arising from or related to your use of the App.

        Limitation of Liability
        To the maximum extent permitted by applicable law, we shall not be liable for any indirect, incidental, consequential, special, or punitive damages, including but not limited to damages for loss of profits, data, or other intangible losses, arising out of or in connection with your use of the App.

        Indemnification
        You agree to indemnify, defend, and hold us harmless from and against any claims, liabilities, damages, losses, and expenses (including legal fees) arising out of or in connection with your use of the App, your violation of these Terms, or your violation of any rights of any third party.

        Changes to the Terms
        We reserve the right to modify or replace these Terms at any time. Any changes will be effective immediately upon posting the updated Terms within the App. Your continued use of the App after the posting of any changes constitutes your acceptance of such changes.

        Governing Law and Jurisdiction
        These Terms shall be governed by and construed in accordance with the laws of [Jurisdiction]. Any dispute

""")
    
]

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
