.class final Lcom/android/server/pm/PmHook;
.super Ljava/lang/Object;
.source "PmHook.java"


# static fields
.field private static final ACTION_INSTALL_FAILED:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL_FAILED"

.field private static final TAG:Ljava/lang/String; = "PM_HOOK"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final auditLogInstallFail(Ljava/lang/String;I)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userIdentifier"    # I

    .line 75
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;IZ)V

    .line 76
    return-void
.end method

.method static final auditLogInstallFail(Ljava/lang/String;IZ)V
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userIdentifier"    # I
    .param p2, "removeMsgFromUser0OnWpcod"    # Z

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    if-eqz p2, :cond_1f

    const-string v0, ""

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move-object v6, v0

    .line 80
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v4, "PackageManagerService"

    move v7, p1

    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method static final beginInstallLog(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 10
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "userId"    # I

    .line 32
    nop

    .line 34
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Starting to install Application %s version %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 32
    const/4 v0, 0x5

    const/4 v1, 0x5

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p1

    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method static final enableDisableApplicationLog(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 31
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "userId"    # I

    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 91
    .local v4, "psToken":J
    const-string v0, " has been disabled."

    const-string v6, " has been enabled."

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v2, :cond_68

    .line 92
    const-string v10, "Application "

    if-eq v3, v9, :cond_42

    if-nez v3, :cond_1a

    goto :goto_42

    .line 100
    :cond_1a
    if-eq v3, v8, :cond_1e

    if-ne v3, v7, :cond_c9

    .line 102
    :cond_1e
    const/4 v11, 0x5

    const/4 v12, 0x5

    const/4 v13, 0x1

    .line 104
    :try_start_21
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "PackageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    .line 102
    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c9

    .line 94
    :cond_42
    :goto_42
    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "PackageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    .line 94
    move/from16 v25, p3

    invoke-static/range {v18 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_67
    .catchall {:try_start_21 .. :try_end_67} :catchall_ce

    goto :goto_c9

    .line 110
    :cond_68
    const-string v10, "/"

    const-string v11, "Component "

    if-eq v3, v9, :cond_9e

    if-nez v3, :cond_71

    goto :goto_9e

    .line 118
    :cond_71
    if-eq v3, v8, :cond_75

    if-ne v3, v7, :cond_c9

    .line 120
    :cond_75
    const/4 v12, 0x5

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 122
    :try_start_78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "PackageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    .line 120
    move/from16 v19, p3

    invoke-static/range {v12 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c9

    .line 112
    :cond_9e
    :goto_9e
    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x1

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    const-string v23, "PackageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    .line 112
    move/from16 v26, p3

    invoke-static/range {v19 .. v26}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c9
    .catchall {:try_start_78 .. :try_end_c9} :catchall_ce

    .line 129
    :cond_c9
    :goto_c9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    nop

    .line 132
    .end local v4    # "psToken":J
    return-void

    .line 129
    .restart local v4    # "psToken":J
    :catchall_ce
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    throw v0
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method static final installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;I)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 70
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method static final installSuccesLog(Ljava/lang/String;I)V
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 55
    nop

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p1

    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method static final signatureVerificationFailure(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 20
    nop

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because of signature verification failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p2

    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method static final uninstallLog(Ljava/lang/String;ZI)V
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "success"    # Z
    .param p2, "userId"    # I

    .line 43
    nop

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uninstall Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    if-eqz p1, :cond_17

    const-string v1, " succeeded"

    goto :goto_19

    :cond_17
    const-string v1, " failed"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p2

    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method
