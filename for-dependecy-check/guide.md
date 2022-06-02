##  To run dependency check in your code
##  Add the below code in pom.xml
<project>
    <build>
        <plugins>
            <plugin>
              <groupId>org.owasp</groupId>
              <artifactId>dependency-check-maven</artifactId>
              <executions>
                  <execution>
                      <goals>
                          <goal>check</goal>
                      </goals>
                  </execution>
              </executions>
            </plugin>
        </plugins>
    </build>
</project>

##############

$ mvn org.owasp:dependency-check-maven:check
$ ls -lrt /root/sonar-scan-maven/target/dependency-check-report.html
-rw-r--r--    1 root     root        186801 Jun  2 10:39 /root/sonar-scan-maven/target/dependency-check-report.html

#######
Executing it first time will take some time

~/sonar-scan-maven # mvn org.owasp:dependency-check-maven:check
[INFO] Scanning for projects...
Downloading from central: https://repo.maven.apache.org/maven2/org/owasp/dependency-check-maven/7.1.0/dependenc
y-check-maven-7.1.0.pom
[INFO] Checking for updates
[INFO] NVD CVE requires several updates; this could take a couple of minutes.
[INFO] Download Started for NVD CVE - 2002
[INFO] Download Complete for NVD CVE - 2002  (2720 ms)
[INFO] Processing Started for NVD CVE - 2002
[INFO] Download Started for NVD CVE - 2003
[INFO] Download Complete for NVD CVE - 2003  (2025 ms)
[INFO] Processing Started for NVD CVE - 2003
........
[INFO] Processing Started for NVD CVE - Modified
[INFO] Processing Complete for NVD CVE - Modified  (1068 ms)
[INFO] Begin database maintenance
[INFO] Updated the CPE ecosystem on 126148 NVD records
[INFO] Removed the CPE ecosystem on 3728 NVD records
[INFO] End database maintenance (17364 ms)
[INFO] Begin database defrag
[INFO] End database defrag (7032 ms)
[INFO] Check for updates complete (259535 ms)
[INFO]

Dependency-Check is an open source tool performing a best effort analysis of 3rd party dependencies; false posi
tives and false negatives may exist in the analysis performed by the tool. Use of the tool and the reporting pr
ovided constitutes acceptance for use in an AS IS condition, and there are NO warranties, implied or otherwise,
 with regard to the analysis or its use. Any use of the tool and the reporting provided is at the user’s risk.
In no event shall the copyright holder or OWASP be held liable for any damages whatsoever arising out of or in
connection with the use of this tool, the analysis performed, or the resulting report.


   About ODC: https://jeremylong.github.io/DependencyCheck/general/internals.html
   False Positives: https://jeremylong.github.io/DependencyCheck/general/suppression.html

� Sponsor: https://github.com/sponsors/jeremylong


[INFO] Analysis Started
[INFO] Finished Archive Analyzer (0 seconds)
[INFO] Finished File Name Analyzer (0 seconds)
[INFO] Finished Jar Analyzer (0 seconds)
[INFO] Finished Dependency Merging Analyzer (0 seconds)
[INFO] Finished Version Filter Analyzer (0 seconds)
[INFO] Finished Hint Analyzer (0 seconds)
[INFO] Created CPE Index (3 seconds)
[INFO] Finished CPE Analyzer (4 seconds)
[INFO] Finished False Positive Analyzer (0 seconds)
[INFO] Finished NVD CVE Analyzer (0 seconds)
[INFO] Finished Sonatype OSS Index Analyzer (1 seconds)
[INFO] Finished Vulnerability Suppression Analyzer (0 seconds)
[INFO] Finished Dependency Bundling Analyzer (0 seconds)
[INFO] Analysis Complete (7 seconds)
[INFO] Writing report to: /root/sonar-scan-maven/target/dependency-check-report.html
[WARNING]

One or more dependencies were identified with known vulnerabilities in Example of basic Maven project:

guava-29.0-jre.jar (pkg:maven/com.google.guava/guava@29.0-jre, cpe:2.3:a:google:guava:29.0:*:*:*:*:*:*:*) : CVE
-2020-8908


See the dependency-check report for more details.


[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  06:28 min
[INFO] Finished at: 2022-06-02T10:40:00Z
[INFO] ------------------------------------------------------------------------
