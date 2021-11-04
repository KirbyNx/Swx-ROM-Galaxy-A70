.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/samsung/android/knox/log/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;
    }
.end annotation


# static fields
.field private static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field private static final EDMAUDIT_PROPERTY:Ljava/lang/String; = "security.edmaudit"

.field private static final REMOVABLE_MEDIA_MOUNTED:Ljava/lang/String; = "Mounted"

.field private static final REMOVABLE_MEDIA_UNMOUNTED:Ljava/lang/String; = "Unmounted"

.field private static final START_EDMAUDIT_PROCESS:Ljava/lang/String; = "true"

.field private static final STOP_EDMAUDIT_PROCESS:Ljava/lang/String; = "false"

.field private static final STORAGE_VOLUME_EXTRA:Ljava/lang/String; = "android.os.storage.extra.STORAGE_VOLUME"

.field private static final TAG:Ljava/lang/String; = "AuditLogService"

.field private static final UID_AUDITD:I = 0x7cf

.field private static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerOwnerCache:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field final mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;

.field private final mMessagePackage:Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private mRemovableMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 98
    const-string v0, "KeyStore"

    const-string/jumbo v1, "keystore"

    const-string v2, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v3, "AndroidKeyStoreSpi"

    const-string v4, "OkHostnameVerifier"

    const-string v5, "OpenSSLRandom"

    const-string v6, "PKIXRevocationChecker"

    const-string v7, "ConscryptFileDescriptorSocket"

    const-string v8, "Connection"

    const-string v9, "CertPathValidator"

    const-string v10, "ecryptfs"

    const-string v11, "conscrypt"

    const-string/jumbo v12, "fscrypt"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;)V
    .registers 10
    .param p1, "injector"    # Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;-><init>()V

    .line 196
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mRemovableMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$2;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    .line 157
    iget-object v0, p1, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 158
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 159
    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 163
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    .line 164
    const-string v0, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    .line 165
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "IFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mRemovableMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3

    .line 184
    :try_start_9c
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 185
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 186
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v5

    .line 187
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 188
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 192
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_c8

    .line 193
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    .line 194
    return-void

    .line 192
    :catchall_c8
    move-exception v4

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v4
.end method

.method private AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 30
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "redactedLogMessage"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .param p10, "asUser"    # Z

    .line 1117
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v0, p7

    if-nez p10, :cond_51

    .line 1118
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v1

    .line 1119
    .local v1, "isIptablesNeeded":Z
    if-eqz v11, :cond_15

    iget v2, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_19

    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1120
    .local v2, "callingUid":I
    :goto_19
    const/4 v3, 0x0

    .line 1125
    .local v3, "isChangedByIptables":Z
    if-eqz v1, :cond_32

    invoke-direct {v10, v13, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1126
    move/from16 v4, p9

    invoke-direct {v10, v13, v0, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1128
    .end local p9    # "userId":I
    .local v4, "userId":I
    const/4 v3, 0x1

    .line 1129
    const-string v5, "IPT_MDM_LOG"

    const-string v6, "IPT_MDM_LOG "

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local p7    # "logMessage":Ljava/lang/String;
    .local v0, "logMessage":Ljava/lang/String;
    goto :goto_38

    .line 1125
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v4    # "userId":I
    .restart local p7    # "logMessage":Ljava/lang/String;
    .restart local p9    # "userId":I
    :cond_32
    move/from16 v4, p9

    .line 1137
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1143
    .end local p7    # "logMessage":Ljava/lang/String;
    .end local p9    # "userId":I
    .restart local v0    # "logMessage":Ljava/lang/String;
    .restart local v4    # "userId":I
    :goto_38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_48

    .line 1144
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v12, v5, :cond_4e

    :cond_48
    if-nez v3, :cond_4e

    .line 1145
    const/4 v4, -0x1

    move-object v14, v0

    move v15, v4

    goto :goto_55

    .line 1152
    .end local v1    # "isIptablesNeeded":Z
    .end local v2    # "callingUid":I
    .end local v3    # "isChangedByIptables":Z
    :cond_4e
    move-object v14, v0

    move v15, v4

    goto :goto_55

    .line 1117
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v4    # "userId":I
    .restart local p7    # "logMessage":Ljava/lang/String;
    .restart local p9    # "userId":I
    :cond_51
    move/from16 v4, p9

    move-object v14, v0

    move v15, v4

    .line 1152
    .end local p7    # "logMessage":Ljava/lang/String;
    .end local p9    # "userId":I
    .local v14, "logMessage":Ljava/lang/String;
    .local v15, "userId":I
    :goto_55
    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a1

    .line 1153
    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    .line 1154
    .local v16, "c":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 1156
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v9, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v9

    .line 1157
    :try_start_67
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1158
    .local v0, "it":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/Admin;
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_194

    move-object v8, v2

    .line 1161
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .local v8, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    move-object/from16 v7, p8

    :try_start_7a
    invoke-direct {v10, v8, v14, v7, v15}, Lcom/android/server/enterprise/auditlog/AuditLogService;->evaluateLogMessageForWpcod(Lcom/android/server/enterprise/auditlog/Admin;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 1162
    .local v6, "messageToBeWritten":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1164
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object v7, v8

    move-object/from16 v18, v9

    goto/16 :goto_16e

    .line 1167
    :cond_90
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_17e

    move v5, v1

    .line 1170
    .local v5, "adminUserId":I
    const/4 v1, -0x1

    if-eq v15, v1, :cond_cc

    if-nez v5, :cond_b1

    .line 1172
    :try_start_9e
    invoke-static {v15}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_cc

    goto :goto_b1

    .line 1201
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v5    # "adminUserId":I
    .end local v6    # "messageToBeWritten":Ljava/lang/String;
    :catchall_a5
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object v1, v8

    move-object/from16 v18, v9

    goto/16 :goto_19d

    .line 1172
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v5    # "adminUserId":I
    .restart local v6    # "messageToBeWritten":Ljava/lang/String;
    :cond_b1
    :goto_b1
    if-ne v5, v15, :cond_b5

    if-nez v5, :cond_cc

    .line 1176
    :cond_b5
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v1

    invoke-direct {v10, v15, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v1
    :try_end_bd
    .catchall {:try_start_9e .. :try_end_bd} :catchall_a5

    if-eqz v1, :cond_c0

    goto :goto_cc

    :cond_c0
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object v4, v6

    move-object v7, v8

    move-object/from16 v18, v9

    goto/16 :goto_16d

    .line 1178
    :cond_cc
    :goto_cc
    :try_start_cc
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_17e

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v17, v5

    .end local v5    # "adminUserId":I
    .local v17, "adminUserId":I
    move/from16 v5, p3

    move-object/from16 p7, v6

    .end local v6    # "messageToBeWritten":Ljava/lang/String;
    .local p7, "messageToBeWritten":Ljava/lang/String;
    move-object/from16 v6, p6

    move v7, v15

    move-object/from16 p9, v8

    .end local v8    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .local p9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    move-object/from16 v8, p7

    move-object/from16 v18, v9

    move-object/from16 v9, p9

    :try_start_e7
    invoke-direct/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .local v1, "messageBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1182
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_103
    .catchall {:try_start_e7 .. :try_end_103} :catchall_173

    .line 1183
    move/from16 v2, p2

    :try_start_105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_161

    .line 1185
    move/from16 v3, p3

    :try_start_10f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1186
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_117
    .catchall {:try_start_10f .. :try_end_117} :catchall_15f

    .line 1187
    const/4 v4, 0x1

    move/from16 v5, p4

    if-ne v5, v4, :cond_124

    :try_start_11c
    const-string v4, "1"
    :try_end_11e
    .catchall {:try_start_11c .. :try_end_11e} :catchall_11f

    goto :goto_126

    .line 1201
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "messageBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "adminUserId":I
    .end local p7    # "messageToBeWritten":Ljava/lang/String;
    :catchall_11f
    move-exception v0

    move-object/from16 v1, p9

    goto/16 :goto_19d

    .line 1187
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v1    # "messageBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "adminUserId":I
    .restart local p7    # "messageToBeWritten":Ljava/lang/String;
    :cond_124
    :try_start_124
    const-string v4, "0"

    :goto_126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1190
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    move-object/from16 v4, p7

    .end local p7    # "messageToBeWritten":Ljava/lang/String;
    .local v4, "messageToBeWritten":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_154
    .catchall {:try_start_124 .. :try_end_154} :catchall_15d

    move-object/from16 v7, p9

    .end local p9    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .local v7, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :try_start_156
    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_15a

    goto :goto_16d

    .line 1201
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "messageBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "messageToBeWritten":Ljava/lang/String;
    .end local v17    # "adminUserId":I
    :catchall_15a
    move-exception v0

    move-object v1, v7

    goto :goto_19d

    .end local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local p9    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :catchall_15d
    move-exception v0

    goto :goto_17a

    :catchall_15f
    move-exception v0

    goto :goto_178

    :catchall_161
    move-exception v0

    goto :goto_176

    .line 1178
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v17    # "adminUserId":I
    .restart local p7    # "messageToBeWritten":Ljava/lang/String;
    :cond_163
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v4, p7

    move-object/from16 v7, p9

    .line 1200
    .end local v17    # "adminUserId":I
    .end local p7    # "messageToBeWritten":Ljava/lang/String;
    .end local p9    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v4    # "messageToBeWritten":Ljava/lang/String;
    .restart local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :goto_16d
    nop

    .line 1158
    .end local v4    # "messageToBeWritten":Ljava/lang/String;
    .end local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v8    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :goto_16e
    move-object v1, v7

    move-object/from16 v9, v18

    .end local v8    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    goto/16 :goto_6b

    .line 1201
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local p9    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :catchall_173
    move-exception v0

    move/from16 v2, p2

    :goto_176
    move/from16 v3, p3

    :goto_178
    move/from16 v5, p4

    :goto_17a
    move-object/from16 v7, p9

    move-object v1, v7

    .end local p9    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    goto :goto_19d

    .end local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v8    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :catchall_17e
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object v7, v8

    move-object/from16 v18, v9

    move-object v1, v7

    .end local v8    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    goto :goto_19d

    .line 1158
    .end local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v0    # "it":Ljava/util/Iterator;
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :cond_18a
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v18, v9

    .line 1201
    .end local v0    # "it":Ljava/util/Iterator;
    :try_start_192
    monitor-exit v18

    goto :goto_1a7

    :catchall_194
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v18, v9

    :goto_19d
    monitor-exit v18
    :try_end_19e
    .catchall {:try_start_192 .. :try_end_19e} :catchall_19f

    throw v0

    :catchall_19f
    move-exception v0

    goto :goto_19d

    .line 1152
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v16    # "c":Ljava/util/Collection;
    :cond_1a1
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    .line 1203
    :goto_1a7
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    return-void
.end method

.method private appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1082
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1083
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "callingPackageFromUid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1085
    .local v3, "callingPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 1086
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1087
    .local v4, "am":Landroid/app/ActivityManager;
    if-eqz v4, :cond_49

    .line 1088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1091
    .local v5, "token":J
    :try_start_23
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_44

    .line 1093
    .local v7, "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    nop

    .line 1095
    if-eqz v7, :cond_49

    .line 1096
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1097
    .local v9, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, v10, :cond_43

    .line 1098
    iget-object v3, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1097
    .end local v9    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_43
    goto :goto_31

    .line 1093
    .end local v7    # "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catchall_44
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    throw v7

    .line 1101
    .end local v5    # "token":J
    :cond_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v5, "messageBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v6, "\n[logged by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1109
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private checkAuditLogEnforce(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "AuditLogService"

    if-nez v0, :cond_62

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_62

    .line 904
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 905
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "callingPackage":Ljava/lang/String;
    const/4 v3, 0x1

    .line 908
    .local v3, "isEnforce":Z
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    const/16 v4, 0x7cf

    if-ne v0, v4, :cond_32

    .line 909
    :cond_31
    const/4 v3, 0x0

    .line 912
    :cond_32
    if-eqz v3, :cond_60

    .line 915
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceLoggerPermission()V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_37} :catch_38

    .line 926
    goto :goto_60

    .line 916
    :catch_38
    move-exception v4

    .line 919
    .local v4, "ex":Ljava/lang/SecurityException;
    const-string v5, "com.android.chrome"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    .line 920
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLogger: Module does not have AuditLog permission. Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_55
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v5

    const-string v6, "AuditLogger"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .end local v4    # "ex":Ljava/lang/SecurityException;
    :cond_60
    :goto_60
    const/4 v2, 0x1

    return v2

    .line 900
    .end local v0    # "callingUid":I
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v3    # "isEnforce":Z
    :cond_62
    :goto_62
    const-string v0, "Error: Invalid auditlog parameters!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return v1

    .line 931
    :cond_68
    return v1
.end method

.method private checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 1061
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_28

    .line 1066
    :cond_14
    const/4 v0, 0x0

    .line 1067
    .local v0, "allowed":Z
    sget-object v2, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    array-length v3, v2

    :goto_18
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 1068
    .local v4, "swComponentAllowed":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1069
    const/4 v0, 0x1

    .line 1070
    goto :goto_27

    .line 1067
    .end local v4    # "swComponentAllowed":Ljava/lang/String;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1074
    :cond_27
    :goto_27
    return v0

    .line 1062
    .end local v0    # "allowed":Z
    :cond_28
    :goto_28
    const-string v0, "AuditLogService"

    const-string v2, "Error: Invalid auditlog parameters!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return v1

    .line 1077
    :cond_30
    return v1
.end method

.method private checkIptablesEnabledForAdmins()Z
    .registers 8

    .line 879
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 880
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 881
    .local v1, "isIptablesLogsEnabled":Z
    const/4 v2, 0x0

    .line 882
    .local v2, "isAuditEnabled":Z
    const/4 v3, 0x0

    .line 883
    .local v3, "ret":Z
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 884
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 885
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/auditlog/Admin;

    .line 886
    .local v5, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    .line 887
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v2

    .line 888
    if-eqz v1, :cond_3d

    if-eqz v2, :cond_3d

    .line 890
    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/Admin;->isPseudoAdminOfOrganizationOwnedDevice()Z

    move-result v6

    if-nez v6, :cond_3d

    const/4 v6, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v6, 0x0

    :goto_3e
    or-int/2addr v3, v6

    .line 891
    .end local v4    # "uid":I
    .end local v5    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    goto :goto_d

    .line 892
    :cond_40
    return v3
.end method

.method private checkKernelEnabledForAdmins()Z
    .registers 10

    .line 857
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 858
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/enterprise/auditlog/Admin;>;>;"
    const/4 v1, 0x0

    .line 859
    .local v1, "isKernelEnabled":Z
    const/4 v2, 0x0

    .line 860
    .local v2, "isAuditEnabled":Z
    const/4 v3, 0x0

    .line 861
    .local v3, "ret":Z
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 862
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 863
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/enterprise/auditlog/Admin;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 864
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v6

    .line 865
    .local v6, "rulesInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    invoke-virtual {v6}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    .line 866
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v2

    .line 867
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/auditlog/Admin;

    .line 868
    .local v7, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v1, :cond_47

    if-eqz v2, :cond_47

    .line 870
    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/Admin;->isPseudoAdminOfOrganizationOwnedDevice()Z

    move-result v8

    if-nez v8, :cond_47

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/Admin;->isProfileOwnerOfOrganizationOwnedDevice()Z

    move-result v8

    if-nez v8, :cond_47

    const/4 v8, 0x1

    goto :goto_48

    :cond_47
    const/4 v8, 0x0

    :goto_48
    or-int/2addr v3, v8

    .line 871
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/enterprise/auditlog/Admin;>;"
    .end local v5    # "uid":I
    .end local v6    # "rulesInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .end local v7    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    goto :goto_d

    .line 872
    :cond_4a
    return v3
.end method

.method private checkOwnContainerOrSelf(II)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .line 1227
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1228
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 1229
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1230
    .local v0, "ownerUid":Ljava/lang/Integer;
    if-eqz v0, :cond_3b

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_26

    .line 1234
    return v1

    .line 1237
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1238
    .local v2, "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1239
    .local v3, "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1240
    .local v4, "adminUserId":I
    if-ne v2, v3, :cond_3b

    if-ne p1, v4, :cond_3b

    .line 1241
    return v1

    .line 1247
    .end local v0    # "ownerUid":Ljava/lang/Integer;
    .end local v2    # "ownerAppId":I
    .end local v3    # "adminAppId":I
    .end local v4    # "adminUserId":I
    :cond_3b
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 1248
    .local v0, "ownerUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    if-ne v0, p2, :cond_51

    .line 1251
    return v1

    .line 1254
    :cond_51
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1255
    .restart local v2    # "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1256
    .restart local v3    # "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1257
    .restart local v4    # "adminUserId":I
    if-ne v2, v3, :cond_62

    if-ne p1, v4, :cond_62

    .line 1258
    return v1

    .line 1262
    .end local v0    # "ownerUid":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "adminAppId":I
    .end local v4    # "adminUserId":I
    :cond_62
    const/4 v0, 0x0

    return v0
.end method

.method private createAdmins()V
    .registers 12

    .line 332
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->isNeedToRunCreateAdmins()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 333
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 337
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 338
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/content/ContentValues;

    .line 340
    const-string v3, "adminUid"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 341
    .local v3, "uid":I
    const-string v4, "auditLogEnabled"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 342
    new-instance v4, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 343
    .local v4, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string v5, "auditCriticalSize"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 344
    .local v5, "criticalSize":Ljava/lang/Integer;
    if-eqz v5, :cond_5a

    .line 345
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 347
    :cond_5a
    const-string v6, "auditMaximumSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 348
    .local v6, "maximumSize":Ljava/lang/Integer;
    if-eqz v6, :cond_69

    .line 349
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 351
    :cond_69
    const-string v7, "auditLogIptables"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 352
    const-string v7, "auditLogMDM"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    .line 353
    const-string v7, "auditLogBufferSize"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 354
    .local v7, "bufferSize":Ljava/lang/Long;
    if-eqz v7, :cond_98

    .line 355
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 358
    :cond_98
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 359
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v8

    .line 360
    :try_start_a2
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    monitor-exit v8
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_b4

    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v8

    .line 363
    .local v8, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4, v8}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto :goto_b7

    .line 361
    .end local v8    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_b4
    move-exception v9

    :try_start_b5
    monitor-exit v8
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v9

    .line 365
    .end local v3    # "uid":I
    .end local v4    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v5    # "criticalSize":Ljava/lang/Integer;
    .end local v6    # "maximumSize":Ljava/lang/Integer;
    .end local v7    # "bufferSize":Ljava/lang/Long;
    :cond_b7
    :goto_b7
    goto/16 :goto_16

    .line 367
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_b9
    return-void
.end method

.method private enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 695
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 695
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLoggerPermission()V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 688
    return-void

    .line 685
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Admin does not have com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private evaluateLogMessageForWpcod(Lcom/android/server/enterprise/auditlog/Admin;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "redactedLogMessage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1207
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/Admin;->isPseudoAdminOfOrganizationOwnedDevice()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1210
    if-eqz p3, :cond_16

    .line 1212
    move-object p2, p3

    goto :goto_16

    .line 1214
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/Admin;->isProfileOwnerOfOrganizationOwnedDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1217
    const/4 v0, -0x1

    if-ne p4, v0, :cond_16

    if-eqz p3, :cond_16

    .line 1219
    move-object p2, p3

    .line 1223
    :cond_16
    :goto_16
    return-object p2
.end method

.method private extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 15
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 370
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 371
    .local v0, "rulesInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    if-eqz p1, :cond_8b

    .line 372
    const-string v1, "auditLogRuleSeverity"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 373
    .local v1, "severityRule":Ljava/lang/Integer;
    const-string v2, "auditLogRuleOutcome"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 374
    .local v2, "outcomeRule":Ljava/lang/Integer;
    const-string v3, "auditLogKernelEnabled"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 375
    .local v3, "enableKernelLogs":Z
    const-string v4, "auditLogRuleGroups"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "groupsRuleString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 377
    .local v5, "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, ","

    if-nez v6, :cond_4a

    .line 378
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 379
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    move v10, v7

    :goto_3c
    if-ge v10, v9, :cond_4a

    aget-object v11, v6, v10

    .line 380
    .local v11, "s":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v11    # "s":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    .line 384
    :cond_4a
    const-string v6, "auditLogRuleUsers"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "usersRuleString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 386
    .local v9, "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_70

    .line 387
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 388
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    :goto_62
    if-ge v7, v10, :cond_70

    aget-object v11, v8, v7

    .line 389
    .restart local v11    # "s":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v11    # "s":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    .line 393
    :cond_70
    if-eqz v1, :cond_79

    .line 394
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setSeverityRule(I)V

    .line 396
    :cond_79
    if-eqz v2, :cond_82

    .line 397
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setOutcomeRule(I)V

    .line 399
    :cond_82
    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    .line 400
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setKernelLogsEnabled(Z)V

    .line 401
    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    .line 403
    .end local v1    # "severityRule":Ljava/lang/Integer;
    .end local v2    # "outcomeRule":Ljava/lang/Integer;
    .end local v3    # "enableKernelLogs":Z
    .end local v4    # "groupsRuleString":Ljava/lang/String;
    .end local v5    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "usersRuleString":Ljava/lang/String;
    .end local v9    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8b
    return-object v0
.end method

.method private filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 5
    .param p1, "group"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 1542
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1543
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1544
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    .line 1547
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 1545
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 6
    .param p1, "outcome"    # Z
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 1530
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    if-ne p1, v1, :cond_10

    .line 1532
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-eq v0, v1, :cond_1b

    :cond_10
    if-nez p1, :cond_19

    .line 1534
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    .line 1537
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 1535
    :cond_1b
    :goto_1b
    return v1
.end method

.method private filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 4
    .param p1, "severityGrade"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 1523
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-gt p1, v0, :cond_8

    .line 1524
    const/4 v0, 0x1

    return v0

    .line 1526
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 1551
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1552
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1553
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    goto :goto_24

    .line 1557
    :cond_22
    const/4 v0, 0x0

    return v0

    .line 1555
    :cond_24
    :goto_24
    const/4 v0, 0x1

    return v0
.end method

.method private filterKernel(Ljava/lang/String;Lcom/samsung/android/knox/log/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .registers 8
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .param p3, "logMessage"    # Ljava/lang/String;
    .param p4, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .line 1568
    const-string v0, "KERNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 1572
    const-string v0, "IPT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1573
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    .line 1574
    invoke-virtual {p4}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1575
    return v1

    .line 1577
    :cond_19
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1582
    return v1

    .line 1584
    .end local v0    # "index":I
    :cond_20
    nop

    .line 1587
    const/4 v0, 0x0

    return v0

    .line 1585
    :cond_23
    return v1
.end method

.method private filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .registers 10
    .param p1, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .param p2, "severityGrade"    # I
    .param p3, "outcome"    # Z
    .param p4, "group"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .line 1509
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1510
    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1511
    invoke-direct {p0, p4, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1512
    invoke-direct {p0, p6, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1513
    invoke-direct {p0, p5, p1, p7, p8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterKernel(Ljava/lang/String;Lcom/samsung/android/knox/log/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1514
    const/4 v0, 0x1

    return v0

    .line 1516
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private getAdminPackageNameForUid(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .line 1494
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1495
    .local v0, "appUid":I
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_13

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_10

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_13

    .line 1496
    :cond_10
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v1

    .line 1499
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_25

    .line 1501
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1503
    :cond_25
    return-object v1
.end method

.method private getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1594
    const-string v0, "UID="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1595
    .local v0, "init":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 1596
    move v1, v0

    .line 1597
    .local v1, "end":I
    :goto_a
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_15

    .line 1598
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1600
    :cond_15
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1601
    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_25

    .line 1602
    const/4 p3, -0x1

    goto :goto_29

    .line 1604
    :cond_25
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1607
    .end local v1    # "end":I
    .end local v2    # "uid":I
    :cond_29
    :goto_29
    return p3
.end method

.method private getDeviceInfo()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-result-object v0

    .line 304
    .local v0, "deviceInventory":Lcom/samsung/android/knox/deviceinfo/DeviceInventory;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, " -----------------------------------------\n"

    .line 307
    .local v2, "separator":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLATFORM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "baseband":Ljava/lang/String;
    if-eqz v3, :cond_9e

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BASEBAND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getSerialNumberInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-object v1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 705
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 707
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 7
    .param p1, "uid"    # I

    .line 597
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 598
    .local v0, "ruleInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .local v1, "filterValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 602
    .local v2, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 603
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 604
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v0

    .line 606
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_2d
    return-object v0
.end method

.method private getSerialNumberInternal()Ljava/lang/String;
    .registers 7

    .line 1665
    const-string v0, ""

    const/4 v1, 0x0

    .line 1666
    .local v1, "rilSerial":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1668
    .local v2, "token":J
    :try_start_7
    const-string/jumbo v4, "ril.serialnumber"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1669
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "00000000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1670
    :cond_1d
    const-string/jumbo v4, "ro.boot.serialno"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1671
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2f
    .catchall {:try_start_7 .. :try_end_29} :catchall_2d

    if-eqz v0, :cond_2c

    .line 1672
    const/4 v1, 0x0

    .line 1678
    :cond_2c
    goto :goto_39

    :catchall_2d
    move-exception v0

    goto :goto_3e

    .line 1674
    :catch_2f
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1676
    :try_start_31
    const-string v4, "AuditLogService"

    const-string v5, "could not get property"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2d

    .line 1678
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    nop

    .line 1680
    return-object v1

    .line 1678
    :goto_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    throw v0
.end method

.method private isAuditLogEnabledInternal(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 440
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 441
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .line 1614
    const-string v0, "KERNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1615
    const-string v0, "IPT_MDM_LOG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1616
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1617
    const/4 v1, 0x1

    return v1

    .line 1620
    .end local v0    # "index":I
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private setAvailableSize(I)J
    .registers 23
    .param p1, "uid"    # I

    .line 780
    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    .line 782
    .local v1, "ret":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 783
    .local v3, "path":Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 785
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    .line 786
    .local v5, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    .line 787
    .local v7, "availableBlocks":J
    mul-long v9, v7, v5

    .line 789
    .local v9, "freeBytesInternal":J
    const-wide/16 v11, 0x5

    mul-long/2addr v11, v9

    const-wide/16 v13, 0x64

    div-long/2addr v11, v13

    .line 791
    .local v11, "availableSpace":J
    const-wide/32 v13, 0xa00000

    cmp-long v13, v11, v13

    const-wide/32 v14, 0x3200000

    if-ltz v13, :cond_43

    cmp-long v13, v11, v14

    if-gtz v13, :cond_43

    .line 792
    iget-object v15, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v17, "AUDITLOG"

    const-string v18, "auditLogBufferSize"

    move/from16 v16, p1

    move-wide/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 794
    move-wide v1, v11

    goto :goto_5b

    .line 797
    :cond_43
    cmp-long v13, v11, v14

    if-ltz v13, :cond_5b

    .line 798
    iget-object v14, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-wide/32 v18, 0x3200000

    const-string v16, "AUDITLOG"

    const-string v17, "auditLogBufferSize"

    move/from16 v15, p1

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 800
    const-wide/32 v1, 0x3200000

    .line 803
    :cond_5b
    :goto_5b
    return-wide v1
.end method

.method private startStopEdmAuditProcess()V
    .registers 6

    .line 1644
    const-string/jumbo v0, "true"

    const-string v1, "false"

    const-string/jumbo v2, "security.edmaudit"

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 1646
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1d
    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 1647
    .local v3, "startService":Z
    :goto_20
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1649
    .local v4, "currentEdmauditStatus":Ljava/lang/String;
    if-eqz v3, :cond_30

    .line 1650
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1651
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 1653
    :cond_30
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1654
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_39} :catch_3a

    .line 1658
    .end local v3    # "startService":Z
    .end local v4    # "currentEdmauditStatus":Ljava/lang/String;
    :cond_39
    :goto_39
    goto :goto_55

    .line 1656
    :catch_3a
    move-exception v0

    .line 1657
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on start/stop edmaudit process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuditLogService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_55
    return-void
.end method

.method private updateEDMNativeHelperStatus()V
    .registers 2

    .line 285
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 286
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setKernelLogsEnabled(Z)V

    .line 288
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    goto :goto_27

    .line 292
    :cond_1e
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 295
    :goto_27
    return-void
.end method

.method private validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 6
    .param p1, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 1625
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1626
    return v0

    .line 1628
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_23

    .line 1629
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_13

    goto :goto_23

    .line 1632
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    if-ltz v1, :cond_22

    .line 1633
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_21

    goto :goto_22

    .line 1636
    :cond_21
    return v2

    .line 1634
    :cond_22
    :goto_22
    return v0

    .line 1630
    :cond_23
    :goto_23
    return v0
.end method


# virtual methods
.method public AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .line 947
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .line 974
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 976
    return-void
.end method

.method public AuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .line 1013
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .line 1043
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1045
    return-void
.end method

.method public RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "redactedLogMessage"    # Ljava/lang/String;

    .line 954
    move-object v11, p0

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 956
    .local v14, "checkPermission":Z
    if-eqz v14, :cond_21

    .line 957
    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 960
    :cond_21
    return-void
.end method

.method public RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 26
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "redactedLogMessage"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .line 981
    move-object/from16 v11, p0

    move-object/from16 v0, p7

    move-object/from16 v12, p6

    invoke-direct {v11, v12, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 982
    .local v13, "checkPermission":Z
    if-eqz v13, :cond_64

    .line 987
    iget-object v1, v11, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 988
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 989
    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 990
    .local v1, "appUid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " $3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local p7    # "logMessage":Ljava/lang/String;
    .local v0, "logMessage":Ljava/lang/String;
    goto :goto_4c

    .line 988
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v1    # "appUid":I
    .restart local p7    # "logMessage":Ljava/lang/String;
    :cond_4b
    move-object v15, v0

    .line 994
    .end local p7    # "logMessage":Ljava/lang/String;
    .local v15, "logMessage":Ljava/lang/String;
    :goto_4c
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v15

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_65

    .line 982
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "logMessage":Ljava/lang/String;
    .restart local p7    # "logMessage":Ljava/lang/String;
    :cond_64
    move-object v15, v0

    .line 997
    .end local p7    # "logMessage":Ljava/lang/String;
    .restart local v15    # "logMessage":Ljava/lang/String;
    :goto_65
    return-void
.end method

.method public RedactedAuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "redactedLogMessage"    # Ljava/lang/String;

    .line 1020
    move-object v11, p0

    move-object/from16 v12, p7

    move-object/from16 v13, p6

    invoke-direct {p0, v13, v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1021
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1023
    .local v14, "appendedMessage":Ljava/lang/String;
    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v14

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1026
    .end local v14    # "appendedMessage":Ljava/lang/String;
    :cond_24
    return-void
.end method

.method public RedactedAuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 25
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "redactedLogMessage"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .line 1050
    move-object v11, p0

    move-object/from16 v12, p7

    move-object/from16 v13, p6

    invoke-direct {p0, v13, v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1051
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1053
    .local v14, "appendedMessage":Ljava/lang/String;
    const/4 v10, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v14

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1056
    .end local v14    # "appendedMessage":Ljava/lang/String;
    :cond_25
    return-void
.end method

.method public disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 813
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 814
    .local v9, "uid":I
    const/4 v0, 0x1

    .line 815
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .line 817
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v10, :cond_64

    .line 818
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 819
    .local v1, "changeValues":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auditLogEnabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v2, "filterValues":Landroid/content/ContentValues;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    .line 823
    .local v3, "updated":I
    if-lez v3, :cond_61

    .line 824
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 826
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v4

    .line 827
    :try_start_43
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 829
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_5e

    .line 831
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 834
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 832
    const-string v6, "AuditLog/isAuditLogEnabled"

    invoke-static {v4, v6, v5}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 835
    const/4 v0, 0x1

    move v11, v0

    goto :goto_65

    .line 829
    :catchall_5e
    move-exception v5

    :try_start_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v5

    .line 837
    :cond_61
    const/4 v0, 0x0

    move v11, v0

    goto :goto_65

    .line 817
    .end local v1    # "changeValues":Landroid/content/ContentValues;
    .end local v2    # "filterValues":Landroid/content/ContentValues;
    .end local v3    # "updated":I
    :cond_64
    move v11, v0

    .line 841
    .end local v0    # "ret":Z
    .local v11, "ret":Z
    :goto_65
    if-eqz v11, :cond_7b

    .line 842
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 843
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 844
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 842
    const-string v6, "AuditLogService"

    const-string v7, "AuditLog status has changed to  disable"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 847
    :cond_7b
    return v11
.end method

.method public disableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 491
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 492
    .local v9, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .line 493
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v0, 0x0

    .line 495
    .local v0, "ret":Z
    if-eqz v10, :cond_48

    .line 496
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 497
    const/4 v0, 0x1

    move v11, v0

    goto :goto_49

    .line 499
    :cond_1f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 500
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auditLogIptables"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v9, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 502
    if-eqz v0, :cond_46

    .line 503
    invoke-virtual {v10, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 504
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v2

    .line 505
    :try_start_3e
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 506
    monitor-exit v2

    goto :goto_46

    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw v3

    .line 510
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_46
    :goto_46
    move v11, v0

    goto :goto_49

    .line 495
    :cond_48
    move v11, v0

    .line 510
    .end local v0    # "ret":Z
    .local v11, "ret":Z
    :goto_49
    if-eqz v11, :cond_5f

    .line 511
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 512
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 513
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 511
    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to disabled"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 515
    :cond_5f
    return v11
.end method

.method public declared-synchronized dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    move-object v1, p0

    monitor-enter p0

    .line 1394
    const/4 v2, 0x0

    if-eqz p7, :cond_86

    :try_start_5
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 1395
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_19

    move-object/from16 v11, p6

    goto/16 :goto_88

    .line 1399
    :cond_19
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_92

    if-eqz v0, :cond_34

    .line 1401
    :try_start_1f
    const-string v0, "AuditLogService"

    const-string v3, "check error"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a
    .catchall {:try_start_1f .. :try_end_29} :catchall_92

    .line 1406
    goto :goto_34

    .line 1403
    .end local p0    # "this":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :catch_2a
    move-exception v0

    .line 1404
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2b
    const-string v3, "AuditLogService"

    const-string v4, "error checking file descriptor"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_92

    .line 1405
    monitor-exit p0

    return v2

    .line 1410
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_34
    :goto_34
    :try_start_34
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 1411
    .local v0, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_40} :catch_7a
    .catchall {:try_start_34 .. :try_end_40} :catchall_92

    .line 1415
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    nop

    .line 1416
    :try_start_41
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 1417
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v9, v3

    .line 1418
    .local v9, "uid":I
    iget-object v3, v1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v10, v3

    .line 1419
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v10, :cond_76

    .line 1420
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v3

    if-nez v3, :cond_73

    .line 1421
    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v3
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_92

    if-nez v3, :cond_67

    .line 1422
    monitor-exit p0

    return v2

    .line 1424
    .restart local p0    # "this":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :cond_67
    move-object v3, v10

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    :try_start_6d
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z

    move-result v2
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_92

    monitor-exit p0

    return v2

    .line 1420
    .end local p0    # "this":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :cond_73
    move-object/from16 v11, p6

    goto :goto_78

    .line 1419
    :cond_76
    move-object/from16 v11, p6

    .line 1427
    :goto_78
    monitor-exit p0

    return v2

    .line 1412
    .end local v0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v9    # "uid":I
    .end local v10    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catch_7a
    move-exception v0

    move-object/from16 v11, p6

    .line 1413
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_7d
    const-string v3, "AuditLogService"

    const-string v4, "can\'t write to file descriptor"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_92

    .line 1414
    monitor-exit p0

    return v2

    .line 1394
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :cond_86
    move-object/from16 v11, p6

    .line 1396
    :goto_88
    :try_start_88
    const-string v0, "AuditLogService"

    const-string/jumbo v3, "invalid output file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_92

    .line 1397
    monitor-exit p0

    return v2

    .line 1393
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "begin":J
    .end local p4    # "end":J
    .end local p6    # "filter":Ljava/lang/String;
    .end local p7    # "outputFile":Landroid/os/ParcelFileDescriptor;
    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 719
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 722
    .local v10, "uid":I
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 723
    return v2

    .line 725
    :cond_15
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 726
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "auditLogEnabled"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v10, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    move v0, v3

    .line 729
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    move-result-wide v3

    .line 730
    .local v3, "allocatedSize":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_37

    .line 731
    const/4 v0, 0x0

    .line 733
    :cond_37
    if-eqz v0, :cond_8f

    .line 734
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 735
    .local v5, "filterValue":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 738
    new-instance v2, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v10, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 739
    .local v2, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 741
    iget-boolean v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 743
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 745
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 747
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    .line 748
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    .line 749
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_73} :catch_90

    .line 750
    :try_start_73
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 752
    monitor-exit v6
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_8c

    .line 754
    :try_start_80
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v7, "AuditLog/isAuditLogEnabled"

    .line 756
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 754
    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8b} :catch_90

    goto :goto_8f

    .line 752
    :catchall_8c
    move-exception v7

    :try_start_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    .end local v0    # "ret":Z
    .end local v10    # "uid":I
    .end local p0    # "this":Lcom/android/server/enterprise/auditlog/AuditLogService;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :try_start_8e
    throw v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_90

    .line 761
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v3    # "allocatedSize":J
    .end local v5    # "filterValue":Landroid/content/ContentValues;
    .restart local v0    # "ret":Z
    .restart local v10    # "uid":I
    .restart local p0    # "this":Lcom/android/server/enterprise/auditlog/AuditLogService;
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_8f
    :goto_8f
    goto :goto_9f

    .line 758
    :catch_90
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 760
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 763
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9f
    if-eqz v0, :cond_b5

    .line 764
    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 765
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 766
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 764
    const-string v7, "AuditLogService"

    const-string v8, "AuditLog status has changed to  enable"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 770
    :cond_b5
    return v0
.end method

.method public enableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 459
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 460
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 461
    .local v9, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .line 462
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v0, 0x0

    .line 463
    .local v0, "ret":Z
    if-eqz v10, :cond_46

    .line 464
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 465
    return v2

    .line 467
    :cond_1e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 468
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auditLogIptables"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    invoke-virtual {v3, v9, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 470
    if-eqz v0, :cond_44

    .line 471
    invoke-virtual {v10, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 472
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v2

    .line 473
    :try_start_3c
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 474
    monitor-exit v2

    goto :goto_44

    :catchall_41
    move-exception v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_41

    throw v3

    .line 478
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_44
    :goto_44
    move v11, v0

    goto :goto_47

    .line 463
    :cond_46
    move v11, v0

    .line 478
    .end local v0    # "ret":Z
    .local v11, "ret":Z
    :goto_47
    if-eqz v11, :cond_5d

    .line 479
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 480
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 481
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 479
    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to enabled"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 483
    :cond_5d
    return v11
.end method

.method public getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 533
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 534
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/Admin;

    .line 535
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v1, :cond_19

    .line 536
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    return-object v2

    .line 538
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    return-object v2
.end method

.method public getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1322
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1323
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1325
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_19

    .line 1326
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    return v1

    .line 1328
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1270
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1271
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1273
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_19

    .line 1274
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    return v1

    .line 1277
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1372
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1373
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1375
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_19

    .line 1376
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    return v1

    .line 1378
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 409
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 410
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 417
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 418
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 419
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 420
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 421
    .local v2, "adminUserId":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_23

    .line 423
    return v4

    .line 424
    :cond_23
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 425
    if-eqz v2, :cond_2d

    if-ne v2, p1, :cond_35

    .line 427
    :cond_2d
    return v4

    .line 430
    :cond_2e
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 432
    return v4

    .line 435
    .end local v1    # "uid":I
    .end local v2    # "adminUserId":I
    :cond_35
    goto :goto_a

    .line 436
    :cond_36
    const/4 v1, 0x0

    return v1
.end method

.method public isAuditServiceRunning()Z
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 451
    const/4 v0, 0x0

    return v0

    .line 452
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public isIPTablesLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 523
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 525
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_19

    .line 526
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    return v1

    .line 528
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 1640
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1451
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1479
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1480
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_28

    .line 1481
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    .line 1482
    :try_start_11
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 1484
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_25

    .line 1485
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1486
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    goto :goto_28

    .line 1484
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 1488
    :cond_28
    :goto_28
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1460
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1461
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_28

    .line 1462
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    .line 1463
    :try_start_11
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 1465
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_25

    .line 1466
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1467
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    goto :goto_28

    .line 1465
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 1469
    :cond_28
    :goto_28
    return-void
.end method

.method public setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 542
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v12

    .line 543
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v12, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v13, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 544
    .local v13, "uid":I
    invoke-direct {v10, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 545
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_12
    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/enterprise/auditlog/Admin;

    .line 548
    .local v14, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v0, 0x0

    .line 549
    .local v0, "ret":Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v1

    .line 550
    .local v15, "insertionValues":Landroid/content/ContentValues;
    if-eqz v14, :cond_32

    .line 551
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auditLogEnabled"

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    .line 554
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 556
    .local v2, "i":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_50

    .line 559
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    .line 560
    .local v8, "sbUsersRule":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 561
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 562
    .restart local v2    # "i":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_93

    .line 565
    :cond_b8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auditLogRuleOutcome"

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auditLogRuleSeverity"

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auditLogRuleGroups"

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auditLogKernelEnabled"

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auditLogRuleUsers"

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v1

    .line 572
    .local v7, "selectionValues":Landroid/content/ContentValues;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    iget-object v1, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    invoke-virtual {v1, v2, v15, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    .line 574
    .end local v0    # "ret":Z
    .local v16, "ret":Z
    if-nez v16, :cond_11c

    .line 575
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    .line 576
    if-eqz v14, :cond_115

    invoke-virtual {v14}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_117

    :cond_115
    const-string v1, ""

    .line 575
    :goto_117
    const-string v2, "Cannot set filter on Database"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_11c
    if-eqz v14, :cond_12c

    .line 580
    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 581
    iget-object v1, v10, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    .line 582
    :try_start_124
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V

    .line 583
    monitor-exit v1

    goto :goto_12c

    :catchall_129
    move-exception v0

    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_124 .. :try_end_12b} :catchall_129

    throw v0

    .line 586
    :cond_12c
    :goto_12c
    if-eqz v16, :cond_14f

    .line 587
    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 588
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 589
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 587
    const-string v17, "AuditLogService"

    const-string v18, "AuditLog filter rules has changed."

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v19, v7

    .end local v7    # "selectionValues":Landroid/content/ContentValues;
    .local v19, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "sbUsersRule":Ljava/lang/StringBuilder;
    .local v17, "sbUsersRule":Ljava/lang/StringBuilder;
    move-object/from16 v8, v18

    move-object/from16 v18, v9

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .local v18, "sb":Ljava/lang/StringBuilder;
    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_155

    .line 586
    .end local v17    # "sbUsersRule":Ljava/lang/StringBuilder;
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "selectionValues":Landroid/content/ContentValues;
    .restart local v7    # "selectionValues":Landroid/content/ContentValues;
    .restart local v8    # "sbUsersRule":Ljava/lang/StringBuilder;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_14f
    move-object/from16 v19, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 593
    .end local v7    # "selectionValues":Landroid/content/ContentValues;
    .end local v8    # "sbUsersRule":Ljava/lang/StringBuilder;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "sbUsersRule":Ljava/lang/StringBuilder;
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    .restart local v19    # "selectionValues":Landroid/content/ContentValues;
    :goto_155
    return v16
.end method

.method public setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "percentageValue"    # I

    .line 1288
    const/4 v0, 0x0

    .line 1290
    .local v0, "ret":Z
    const/4 v1, 0x1

    if-lt p2, v1, :cond_60

    const/16 v1, 0x63

    if-le p2, v1, :cond_9

    goto :goto_60

    .line 1293
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1294
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1295
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1297
    .local v11, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v11, :cond_3a

    .line 1298
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    const-string v4, "auditCriticalSize"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1300
    if-nez v0, :cond_37

    .line 1301
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    .line 1302
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1301
    const-string v4, "Cannot set critcal log size on Databank"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_37
    invoke-virtual {v11, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 1307
    :cond_3a
    if-eqz v0, :cond_5f

    .line 1308
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1309
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuditLog critical size has changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1310
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1308
    const-string v8, "AuditLogService"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1313
    :cond_5f
    return v0

    .line 1291
    .end local v1    # "uid":I
    .end local v11    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :cond_60
    :goto_60
    return v0
.end method

.method public setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "percentageValue"    # I

    .line 1338
    const/4 v0, 0x0

    .line 1340
    .local v0, "ret":Z
    const/4 v1, 0x1

    if-lt p2, v1, :cond_60

    const/16 v1, 0x63

    if-le p2, v1, :cond_9

    goto :goto_60

    .line 1343
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1344
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1345
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1347
    .local v11, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v11, :cond_3a

    .line 1348
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    const-string v4, "auditMaximumSize"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1350
    if-nez v0, :cond_37

    .line 1351
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    .line 1352
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1351
    const-string v4, "Cannot set maximum log size on databank"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :cond_37
    invoke-virtual {v11, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 1357
    :cond_3a
    if-eqz v0, :cond_5f

    .line 1358
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1359
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuditLog maximum size has changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1360
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1358
    const-string v8, "AuditLogService"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1363
    :cond_5f
    return v0

    .line 1341
    .end local v1    # "uid":I
    .end local v11    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :cond_60
    :goto_60
    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 1441
    return-void
.end method
