//
//  Constants.swift
//  ICareOnline
//
//  Created by AMBIN05646 on 08/07/22.
//

import Foundation

enum AppControllers: String {
    case ICOLaunchViewController, ICOLoginViewController, BubbleTabBarController
}

enum Segue: String {
    case IDWelcomeToLogin
}

enum AppStoryboards: String {
    case Main, TabScreens,Medicine
}

enum HomeControllerType: String {
    case Doctor, Hospital, Category
}

struct StaticText {
    
    static let Doc1 = """
Dr Priyanshi Avanija is a leading name in the field of advanced neurosurgical procedures. A Neurosurgeon with +10 years of experience, is a specialist in MIS procedures of the brain.
She holds professional memberships of the Neurological Society of India and the Skull Base Surgery Society of India.
After completing her MBBS in 2000 from the Medical College Hospitals, she did his MS in 2005. In 2011, she also completed her M.Ch in neurosurgery and was a Sugita Scholar at M.R.J University in 2017.
Dr Priyanshi Avanija is renowned for endoscopic and keyhole brain and skull base surgeries, including pituitary surgeries.
She is particularly interested in highly advanced neurosurgical work for brain mapping, brain and skull base tumours, and monitoring and awake surgeries.
The doctor also specialises in vascular surgery of the brain like aneurysm, vascular malformations, carotid endarterectomies and vascular bypass.
She performs surgeries for functional and pain disorders like trigeminal neuralgia and hemifacial spasm and surgery for epilepsy.
The doctor was also involved in spine surgery for tumours arising from within the spinal cord or the nerves.
She is among the pioneers in Mumbai in the field of endoscopic skull base work.
"""
    
    static let Doc2 = """
    Dr Thomas Frederick Douglass is a passionate Orthopaedic surgeon in Delhi.
    He keen and special interest in Arthroscopy, Sports Medicine and Joint Replacement Surgery.
    He underwent a focused fellowship program in Sports Medicine and Shoulder surgery under Dr Johns Hernand.
    A well-trained surgeon in advanced computer navigated joint replacement surgery, Dr Thomas has a rich experience of over 1,000 joint replacement surgeries, knee arthroscopy, ACL reconstruction, and shoulder surgeries.
    Dr Thomas is known to have always integrated the latest advancements into his clinical practice to achieve a maximum positive outcome for the patients.
    His key areas of interest include minimally invasive surgery, Keyhole surgery, Sports injuries, ACL reconstruction, meniscal repair, Rotator cuff repair, Bankart surgery, and Joint Replacements.
    """
    
    static let Doc3 = """
Dr Jacqueline Lazarus is a well known gynecologist and general practitioner with more than 10 years of experience in State Government Health services.
She completed MBBS from ACME, Kerala and DGO from Govt. Medical College.
She started her career in 2009 in Postpartum Unit, Dept of OBG, IMCH Kerala.
Her areas of special interest include infertility and laparoscopic surgery.
Dr Jacqueline Lazarus has teaching experience of 7 years at Postgraduate level.
She has received training in clinical practice, immunization, RCH, communicable diseases and RNTCP.
"""
    
}
