.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .line 627
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceActor(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "realUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 995
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    if-eqz v0, :cond_1a

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1001
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$900(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;

    move-result-object v2

    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/android/server/om/OverlayActorEnforcer;->enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V

    .line 1002
    return-void

    .line 996
    .end local v1    # "callingUid":I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve overlay information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 978
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 978
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .registers 9
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    .line 1052
    .local p1, "disabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setEnabledList"

    invoke-direct {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 1053
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_d
    if-nez p1, :cond_15

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 1059
    :cond_15
    if-nez p2, :cond_1d

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 1062
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1064
    .local v0, "ident":J
    :try_start_21
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_3f

    .line 1065
    :try_start_28
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # invokes: Lcom/android/server/om/OverlayManagerService;->readResetSettingsValue()V
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;)V

    .line 1066
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z

    move-result v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_3c

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    return v3

    .line 1068
    :catchall_3c
    move-exception v3

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "disabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "enabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "userId":I
    .end local p4    # "callback":Landroid/content/om/ISamsungOverlayCallback;
    :try_start_3e
    throw v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 1070
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "disabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "enabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "userId":I
    .restart local p4    # "callback":Landroid/content/om/ISamsungOverlayCallback;
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw v2
.end method

.method public applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .registers 16
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    .line 1009
    .local p1, "disabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setEnabledList"

    invoke-direct {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 1010
    const/4 v0, 0x0

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 1011
    return v0

    .line 1013
    :cond_d
    if-nez p1, :cond_15

    .line 1014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v1

    .line 1016
    :cond_15
    if-nez p2, :cond_1d

    .line 1017
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v1

    .line 1019
    :cond_1d
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1021
    .local v7, "currentTheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1023
    .local v1, "reapply":Z
    if-eqz v7, :cond_90

    :try_start_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_90

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_90

    .line 1024
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, "disabledThemeName":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "enabledThemeName":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_72} :catch_76

    if-eqz v3, :cond_90

    .line 1027
    const/4 v1, 0x1

    goto :goto_90

    .line 1030
    .end local v0    # "enabledThemeName":Ljava/lang/String;
    .end local v2    # "disabledThemeName":Ljava/lang/String;
    :catch_76
    move-exception v0

    .line 1031
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured on checking theme name, exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OverlayManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v1, 0x0

    move v0, v1

    goto :goto_91

    .line 1033
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_90
    :goto_90
    move v0, v1

    .line 1034
    .end local v1    # "reapply":Z
    .local v0, "reapply":Z
    :goto_91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1036
    .local v8, "ident":J
    :try_start_95
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_b8

    .line 1037
    :try_start_9c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # invokes: Lcom/android/server/om/OverlayManagerService;->readResetSettingsValue()V
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;)V

    .line 1038
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;Z)Z

    move-result v1

    monitor-exit v10
    :try_end_b1
    .catchall {:try_start_9c .. :try_end_b1} :catchall_b5

    .line 1042
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    return v1

    .line 1040
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v10
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    .end local v0    # "reapply":Z
    .end local v7    # "currentTheme":Ljava/lang/String;
    .end local v8    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "disabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "enabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "userId":I
    .end local p4    # "callback":Landroid/content/om/ISamsungOverlayCallback;
    :try_start_b7
    throw v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    .line 1042
    .restart local v0    # "reapply":Z
    .restart local v7    # "currentTheme":Ljava/lang/String;
    .restart local v8    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "disabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "enabledPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "userId":I
    .restart local p4    # "callback":Landroid/content/om/ISamsungOverlayCallback;
    :catchall_b8
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 895
    new-instance v0, Lcom/android/server/om/DumpState;

    invoke-direct {v0}, Lcom/android/server/om/DumpState;-><init>()V

    .line 896
    .local v0, "dumpState":Lcom/android/server/om/DumpState;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, "opti":I
    :goto_a
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_ad

    .line 900
    aget-object v3, p3, v2

    .line 901
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_ad

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_ad

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_23

    .line 902
    goto/16 :goto_ad

    .line 904
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 906
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 907
    const-string v1, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    const-string v1, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    const-string v1, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    const-string v1, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    const-string v1, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    const-string v1, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    const-string v1, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    return-void

    .line 915
    :cond_51
    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 916
    array-length v4, p3

    if-lt v2, v4, :cond_62

    .line 917
    const-string v1, "Error: user missing argument"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    return-void

    .line 921
    :cond_62
    :try_start_62
    aget-object v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6e

    .line 922
    add-int/lit8 v2, v2, 0x1

    .line 926
    goto :goto_ab

    .line 923
    :catch_6e
    move-exception v1

    .line 924
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: user argument is not a number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    return-void

    .line 927
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_86
    const-string v4, "--verbose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 928
    invoke-virtual {v0, v5}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_ab

    .line 930
    :cond_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    .end local v3    # "opt":Ljava/lang/String;
    :goto_ab
    goto/16 :goto_a

    .line 933
    :cond_ad
    :goto_ad
    array-length v3, p3

    if-ge v2, v3, :cond_134

    .line 934
    aget-object v3, p3, v2

    .line 935
    .local v3, "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 936
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_16e

    :cond_bb
    goto/16 :goto_12a

    :sswitch_bd
    const-string v4, "basecodepath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/4 v1, 0x4

    goto :goto_12a

    :sswitch_c7
    const-string/jumbo v5, "packagename"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    move v1, v4

    goto :goto_12a

    :sswitch_d2
    const-string/jumbo v4, "isenabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/4 v1, 0x6

    goto :goto_12a

    :sswitch_dd
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/4 v1, 0x5

    goto :goto_12a

    :sswitch_e8
    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/16 v1, 0x9

    goto :goto_12a

    :sswitch_f3
    const-string/jumbo v4, "ismutable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/4 v1, 0x7

    goto :goto_12a

    :sswitch_fe
    const-string/jumbo v4, "userid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move v1, v5

    goto :goto_12a

    :sswitch_109
    const-string/jumbo v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/16 v1, 0x8

    goto :goto_12a

    :sswitch_115
    const-string/jumbo v4, "targetpackagename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/4 v1, 0x2

    goto :goto_12a

    :sswitch_120
    const-string/jumbo v4, "targetoverlayablename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const/4 v1, 0x3

    :goto_12a
    packed-switch v1, :pswitch_data_198

    .line 950
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    goto :goto_134

    .line 947
    :pswitch_131
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 954
    .end local v3    # "arg":Ljava/lang/String;
    :cond_134
    :goto_134
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_144

    array-length v1, p3

    if-ge v2, v1, :cond_144

    .line 955
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    .line 956
    add-int/lit8 v2, v2, 0x1

    .line 959
    :cond_144
    const-string v1, "dump"

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 961
    :try_start_150
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 962
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_168

    .line 963
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 965
    :cond_168
    monitor-exit v1

    .line 966
    return-void

    .line 965
    :catchall_16a
    move-exception v3

    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_150 .. :try_end_16c} :catchall_16a

    throw v3

    nop

    :sswitch_data_16e
    .sparse-switch
        -0x685a1e7c -> :sswitch_120
        -0x4a674a60 -> :sswitch_115
        -0x4577865c -> :sswitch_109
        -0x31d4cdda -> :sswitch_fe
        -0x3188d944 -> :sswitch_f3
        0x302bcfe -> :sswitch_e8
        0x68ac491 -> :sswitch_dd
        0x1a483ad7 -> :sswitch_d2
        0x36391bd1 -> :sswitch_c7
        0x64f6f963 -> :sswitch_bd
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
    .end packed-switch
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 7
    .param p1, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 631
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 632
    const-string v2, "getAllOverlays"

    invoke-direct {p0, p1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 634
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_36

    .line 635
    :try_start_24
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v4

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_33

    .line 638
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 635
    return-object v4

    .line 636
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "userIdArg":I
    :try_start_35
    throw v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 638
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "userIdArg":I
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 639
    throw v2
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 849
    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 850
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_3a

    .line 855
    .local v2, "ident":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    .line 856
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_31

    .line 859
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3a

    .line 862
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 856
    return-object v5

    .line 857
    :catchall_31
    move-exception v5

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :try_start_33
    throw v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 859
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_34
    move-exception v4

    :try_start_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    throw v4
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 862
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 863
    throw v2
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 664
    if-nez p1, :cond_4

    .line 665
    const/4 v0, 0x0

    return-object v0

    .line 669
    :cond_4
    const-wide/32 v0, 0x4000000

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 670
    const-string v2, "getOverlayInfo"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 672
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_3a

    .line 673
    :try_start_28
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 676
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 673
    return-object v4

    .line 674
    :catchall_37
    move-exception v4

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_39
    throw v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 676
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 677
    throw v2
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 645
    if-nez p1, :cond_7

    .line 646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 650
    :cond_7
    const-wide/32 v0, 0x4000000

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 651
    const-string v2, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 653
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_3d

    .line 654
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    .line 657
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 654
    return-object v4

    .line 655
    :catchall_3a
    move-exception v4

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "targetPackageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_3c
    throw v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 657
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "targetPackageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    throw v2
.end method

.method public invalidateCachesForOverlay(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 868
    if-nez p1, :cond_3

    .line 869
    return-void

    .line 872
    :cond_3
    const-string/jumbo v0, "invalidateCachesForOverlay"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v0

    .line 873
    .local v0, "realUserId":I
    const-string/jumbo v1, "invalidateCachesForOverlay"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 876
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2d

    .line 877
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Ljava/lang/String;I)V

    .line 878
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 880
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    nop

    .line 882
    return-void

    .line 878
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local v0    # "realUserId":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_2c
    throw v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 880
    .restart local v0    # "realUserId":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    throw v3
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 889
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 891
    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 683
    if-nez p1, :cond_4

    .line 684
    const/4 v0, 0x0

    return v0

    .line 688
    :cond_4
    const-wide/32 v0, 0x4000000

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 689
    const-string/jumbo v2, "setEnabled"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 690
    .local v2, "realUserId":I
    const-string/jumbo v3, "setEnabled"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_5c

    .line 694
    .local v3, "ident":J
    :try_start_34
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_56

    .line 697
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 698
    invoke-virtual {v7, p1}, Lcom/android/server/om/OverlayManagerService;->isPreventRelaunchPkg(Ljava/lang/String;)Z

    move-result v7

    .line 697
    invoke-virtual {v6, p1, p2, v2, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v6

    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_53

    .line 705
    :try_start_4c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c

    .line 708
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 697
    return v6

    .line 703
    :catchall_53
    move-exception v6

    :try_start_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_55
    throw v6
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 705
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_56
    move-exception v5

    :try_start_57
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v5
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5c

    .line 708
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_5c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 709
    throw v2
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 715
    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    if-nez p2, :cond_6

    goto :goto_5d

    .line 720
    :cond_6
    const-wide/32 v1, 0x4000000

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 721
    const-string/jumbo v3, "setEnabledExclusive"

    invoke-direct {p0, p3, v3}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v3

    .line 722
    .local v3, "realUserId":I
    const-string/jumbo v4, "setEnabledExclusive"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_58

    .line 726
    .local v4, "ident":J
    :try_start_36
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_52

    .line 727
    :try_start_3d
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v0

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_4f

    .line 731
    :try_start_48
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_58

    .line 734
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 727
    return v0

    .line 729
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .end local v3    # "realUserId":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_51
    throw v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 731
    .restart local v3    # "realUserId":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_52
    move-exception v0

    :try_start_53
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_58

    .line 734
    .end local v3    # "realUserId":I
    .end local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_58
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    throw v0

    .line 716
    :cond_5d
    :goto_5d
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 741
    if-nez p1, :cond_4

    .line 742
    const/4 v0, 0x0

    return v0

    .line 746
    :cond_4
    const-wide/32 v0, 0x4000000

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 747
    const-string/jumbo v2, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 749
    .local v2, "realUserId":I
    const-string/jumbo v3, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_55

    .line 753
    .local v3, "ident":J
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_4f

    .line 756
    :try_start_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 757
    invoke-virtual {v8, p1}, Lcom/android/server/om/OverlayManagerService;->isPreventRelaunchPkg(Ljava/lang/String;)Z

    move-result v8

    .line 756
    invoke-virtual {v6, p1, v7, v2, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZIZ)Z

    move-result v6

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_4c

    .line 765
    :try_start_45
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_55

    .line 768
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 756
    return v6

    .line 763
    :catchall_4c
    move-exception v6

    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_4e
    throw v6
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 765
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_4f
    move-exception v5

    :try_start_50
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v5
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_55

    .line 768
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_55
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 769
    throw v2
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 800
    if-nez p1, :cond_4

    .line 801
    const/4 v0, 0x0

    return v0

    .line 805
    :cond_4
    const-wide/32 v0, 0x4000000

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setHighestPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 806
    const-string/jumbo v2, "setHighestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 807
    .local v2, "realUserId":I
    const-string/jumbo v3, "setHighestPriority"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_4e

    .line 811
    .local v3, "ident":J
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_48

    .line 812
    :try_start_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v6

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_45

    .line 815
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4e

    .line 818
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 812
    return v6

    .line 813
    :catchall_45
    move-exception v6

    :try_start_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_47
    throw v6
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 815
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_48
    move-exception v5

    :try_start_49
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v5
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4e

    .line 818
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_4e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 819
    throw v2
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 824
    if-nez p1, :cond_4

    .line 825
    const/4 v0, 0x0

    return v0

    .line 829
    :cond_4
    const-wide/32 v0, 0x4000000

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setLowestPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 830
    const-string/jumbo v2, "setLowestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 831
    .local v2, "realUserId":I
    const-string/jumbo v3, "setLowestPriority"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_4e

    .line 835
    .local v3, "ident":J
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_48

    .line 836
    :try_start_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v6

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_45

    .line 839
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4e

    .line 842
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 836
    return v6

    .line 837
    :catchall_45
    move-exception v6

    :try_start_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_47
    throw v6
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 839
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_48
    move-exception v5

    :try_start_49
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v5
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4e

    .line 842
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_4e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 843
    throw v2
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parentPackageName"    # Ljava/lang/String;
    .param p3, "userIdArg"    # I

    .line 775
    if-eqz p1, :cond_5c

    if-nez p2, :cond_5

    goto :goto_5c

    .line 780
    :cond_5
    const-wide/32 v0, 0x4000000

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 782
    const-string/jumbo v2, "setPriority"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 783
    .local v2, "realUserId":I
    const-string/jumbo v3, "setPriority"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_57

    .line 787
    .local v3, "ident":J
    :try_start_35
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_51

    .line 788
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_4e

    .line 791
    :try_start_47
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_57

    .line 794
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 788
    return v6

    .line 789
    :catchall_4e
    move-exception v6

    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    :try_start_50
    throw v6
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 791
    .restart local v2    # "realUserId":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_51
    move-exception v5

    :try_start_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    throw v5
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_57

    .line 794
    .end local v2    # "realUserId":I
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_57
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 795
    throw v2

    .line 776
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    return v0
.end method
