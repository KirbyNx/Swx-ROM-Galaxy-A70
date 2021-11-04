.class public Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "AndroidHidlUpdater.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 7
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 40
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 42
    .local v0, "isLegacy":Z
    :goto_d
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isSystem()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz p2, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    .line 44
    .local v1, "isSystem":Z
    :cond_17
    :goto_17
    const-string v2, "android.hidl.manager-V1.0-java"

    const-string v3, "android.hidl.base-V1.0-java"

    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    .line 45
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    goto :goto_2c

    .line 48
    :cond_26
    invoke-static {p1, v3}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 49
    invoke-static {p1, v2}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 51
    :goto_2c
    return-void
.end method
