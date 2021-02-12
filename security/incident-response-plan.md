---
title: Incident Response Plan
weight: 10
type: docs
bookToc: true
---

## Incident Response Plan

### Introduction

The purpose of the document is to establish the goals and the vision for the incident management process in the MYRTLECONSULTING S.A. (“we” or “Cloudback”).
This document discusses the steps taken during an incident response plan.

## Incident Response Process

1) The person who discovers the incident should contact Cloudback by one of the following ways:

 - Send an email to the support@cloudback.it 
 - Raise a request in the Cloudback [issue tracker](https://github.com/cloudback/issue-tracker/issues/new?template=bug_report.md)
 - Use any contacts from [Contact Us](../contact-us/) web page

2) If the person discovering the incident is a member of the Cloudback team, they will proceed to step four (4).

3) Once contacted the Support Team will log:

 - The name of the person discovering the incident.
 - Time the person discovering the incident contacted Cloudback.
 - Contact information about the person discovering the incident.
 - The nature of the incident.
 - When the event was first noticed, supporting the idea that the incident occurred.

4) The Support Team member who receives the email (or discovered the incident) will refer to their contact list for both management personnel to be contacted and incident response members to be contacted. The staff member will contact those designated on the list. The staff member could possibly add the following:

 - Is the system affected business critical?
 - What is the severity of the potential impact?
 - Name of system being targeted, along with operating system, Internet Protocol (IP) address, and location.
 - IP address and any information about the origin of the attack.

5) Contacted members of the support team will meet or discuss the situation over the telephone and determine a response strategy. The following question to be discussed:

 - Is the incident real or perceived?
 - Is the incident still in progress?
 - What data or property is threatened and how critical is it?
 - What is the impact on the business should the attack succeed? Minimal, serious, or critical?
 - What system or systems are targeted, where are they located physically and on the network?
 - Is the incident inside the trusted network?
 - Is the response urgent?
 - Can the incident be quickly contained?
 - Will the response alert the attacker and do we care?
 - What type of incident is this? Example: virus, worm, intrusion, abuse, damage.
 
6) An incident ticket will be created. The incident will be categorized into the highest applicable level of one of the following categories:

 - Category one - A threat to public safety or life.
 - Category two - A threat to sensitive data.
 - Category three - A threat to computer systems.
 - Category four - A disruption of services.

7) Team members will establish and follow one of the following procedures basing their response on the incident assessment:

 - Worm response procedure.
 - Virus response procedure.
 - System failure procedure.
 - Active intrusion response procedure - Is critical or sensitive data (Personally Identifiable Information (PII), etc.) at risk?
 - Inactive Intrusion response procedure.
 - System abuse procedure.
 - Property theft response procedure.
 - Website denial of service response procedure.
 - Database or file denial of service response procedure.
 - Spyware response procedure. 
 
The team may create additional procedures which are not foreseen in this document. If there is no applicable procedure in place, the team must document what was done and later establish a procedure for the incident.
 
8) Team members will use forensic techniques, including reviewing system logs, looking for gaps in logs, reviewing intrusion detection logs, and interviewing witnesses and the incident victim to determine how the incident was caused. Only authorized personnel should be performing interviews or examining evidence, and the authorized personnel may vary by situation and the organization.

9) Team members will recommend changes to prevent the occurrence from happening again or infecting other systems.

10) Upon management approval, the changes will be implemented.

11) Team members will restore the affected system(s) to the uninfected state. They may do any or more of the following:

 - Reinstall the affected system(s) from scratch and restore data from backups if necessary. Preserve evidence before doing this.
 - Make users change passwords if passwords may have been sniffed.
 - Be sure the system has been hardened by turning off or uninstalling unused services.
 - Be sure the system is fully patched.
 - Be sure real time virus protection and intrusion detection is running.
 - Be sure the system is logging the correct events and to the proper level.

12) Documentation. The following shall be documented:

 - How the incident was discovered.
 - The category of the incident.
 - How the incident occurred, whether through email, firewall, etc.
 - Where the attack came from, such as IP addresses and other related information about the attacker.
 - What the response plan was.
 - What was done in response?
 - Whether the response was effective.

13) Evidence Preservation. Make copies of logs, email, and other communication. Keep lists of witnesses. Keep evidence as long as necessary to complete prosecution and beyond, in case of an appeal.

14) Notify proper external agencies. Notify the police and other appropriate agencies if prosecution of the intruder is possible. List the agencies and contact numbers here.

15) Assess damage and cost—assess the damage to the organization and estimate both the damage cost and the cost of the containment efforts.

16) Review response and update policies. Plan and take preventative steps so the intrusion can't happen again.

 - Consider whether an additional policy could have prevented the intrusion.
 - Consider whether a procedure or policy was not followed which allowed the intrusion, and then consider what could be changed to ensure that the procedure or policy is followed in the future.
 - Was the incident response appropriate? How could it be improved?
 - Was every appropriate party informed in a timely manner?
 - Were the incident response procedures detailed, and did they cover the entire situation? How can they be improved?
 - Have changes been made to prevent a reinfection? Have all systems been patched, systems locked down, passwords changed, antivirus updated, email policies set, etc.?
 - Have changes been made to prevent a new and similar infection?
 - Should any security policies be updated?
 - What lessons have been learned from this experience? 