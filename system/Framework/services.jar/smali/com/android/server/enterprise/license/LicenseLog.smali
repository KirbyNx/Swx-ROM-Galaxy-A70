.class public final Lcom/android/server/enterprise/license/LicenseLog;
.super Ljava/lang/Object;
.source "LicenseLog.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static deleteAllLog()Z
    .registers 1

    .line 60
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLogService;->deleteAllLog()Z

    move-result v0

    return v0
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->deleteLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .registers 4
    .param p0, "contextInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "isGetterApi"    # Z
    .param p3, "isOldNamespace"    # Z

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/LicenseLogService;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V

    .line 49
    return-void
.end method
