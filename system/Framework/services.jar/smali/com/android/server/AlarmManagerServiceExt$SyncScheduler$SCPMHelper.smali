.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCPMHelper"
.end annotation


# static fields
.field public static final ACTION_UPDATE_SCPM:Ljava/lang/String; = "sec.app.policy.UPDATE.AppsyncPolicy"

.field public static final APPSYNC_POLICY_SCPM_NAME:Ljava/lang/String; = "AppsyncPolicy"


# instance fields
.field private final AUTHORITY_SCPM:Ljava/lang/String;

.field private final AUTHORITY_SCPM_URI:Landroid/net/Uri;

.field private final CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String;

.field private final CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String;

.field private final CONTENT_SCPM_URI:Landroid/net/Uri;

.field private final POLICY_CATEGORY:Ljava/lang/String;

.field private final POLICY_ITEMS:[Ljava/lang/String;

.field private final POLICY_ITEM_PRIMARY:Ljava/lang/String;

.field private final POLICY_SCPM_PROJECTION:[Ljava/lang/String;

.field private final POLICY_SCPM_URI:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCtx:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 10
    .param p1, "this$1"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 4028
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4010
    const-string v0, "CAT_SUSP_MILLIS"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String;

    .line 4011
    const-string v0, "CAT_SUSP_PKGS"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String;

    .line 4016
    const-string/jumbo v0, "item"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEM_PRIMARY:Ljava/lang/String;

    .line 4017
    const-string/jumbo v1, "item"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data4"

    const-string v6, "data5"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    .line 4018
    const-string v0, "category"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_CATEGORY:Ljava/lang/String;

    .line 4020
    const-string v1, "com.samsung.android.sm.policy"

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM:Ljava/lang/String;

    .line 4021
    const-string v1, "content://com.samsung.android.sm.policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    .line 4022
    const-string/jumbo v2, "policy_item"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    .line 4023
    const-string v2, "AppsyncPolicy"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    .line 4024
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v4, v2, v3

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-object v4, v2, v3

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aget-object v4, v2, v3

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aget-object v4, v2, v3

    aput-object v4, v1, v3

    const/4 v3, 0x5

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    .line 4029
    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mCtx:Landroid/content/Context;

    .line 4030
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 4031
    return-void
.end method


# virtual methods
.method public getSuspiciousTagFromSCPM()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4089
    const-string v0, "CAT_SUSP_PKGS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 4090
    .local v5, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4092
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "AlarmManagerEXT"

    if-nez v0, :cond_25

    .line 4093
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4094
    const-string/jumbo v2, "get pkg from DB : No Entry"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_23
    const/4 v1, 0x0

    return-object v1

    .line 4098
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4099
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 4100
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v4, :cond_2a

    aget-object v7, v3, v6

    .line 4101
    .local v7, "itemKey":Ljava/lang/String;
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4102
    .local v8, "col":I
    if-gez v8, :cond_4b

    .line 4103
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v9

    if-eqz v9, :cond_68

    .line 4104
    const-string/jumbo v9, "get pkg from DB : There is no Column"

    invoke-static {v1, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 4110
    :cond_4b
    :try_start_4b
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4f} :catch_50

    .line 4114
    .local v9, "pkgName":Ljava/lang/String;
    goto :goto_53

    .line 4111
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_50
    move-exception v9

    .line 4113
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    move-object v9, v10

    .line 4115
    .local v9, "pkgName":Ljava/lang/String;
    :goto_53
    if-eqz v9, :cond_68

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 4116
    goto :goto_68

    .line 4118
    :cond_5e
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const/4 v11, -0x1

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v10, v9, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4100
    .end local v7    # "itemKey":Ljava/lang/String;
    .end local v8    # "col":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 4121
    :cond_6b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4123
    return-object v2
.end method

.method public getSuspiciousTimeLimitFromSCPM()J
    .registers 8

    .line 4045
    const-string v0, "CAT_SUSP_MILLIS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 4046
    .local v5, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4048
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "AlarmManagerEXT"

    const-wide/16 v2, -0x1

    if-nez v0, :cond_26

    .line 4049
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 4050
    const-string/jumbo v4, "get Time from DB : No Entry"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_25
    return-wide v2

    .line 4054
    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 4055
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4056
    const-string/jumbo v4, "get Time from DB : No Item"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    :cond_38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4058
    return-wide v2

    .line 4061
    :cond_3c
    const-string/jumbo v4, "item"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4062
    .local v4, "col":I
    if-gez v4, :cond_55

    .line 4063
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 4064
    const-string/jumbo v6, "get Time from DB : There is no column"

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4066
    return-wide v2

    .line 4071
    :cond_55
    :try_start_55
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_62
    .catchall {:try_start_55 .. :try_end_59} :catchall_5d

    .line 4076
    .local v1, "timeMillis":J
    :goto_59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4077
    goto :goto_66

    .line 4076
    .end local v1    # "timeMillis":J
    :catchall_5d
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4077
    throw v1

    .line 4072
    :catch_62
    move-exception v1

    .line 4074
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v1, -0x1

    .local v1, "timeMillis":J
    goto :goto_59

    .line 4078
    :goto_66
    return-wide v1
.end method

.method public isSCPMAvailable()Z
    .registers 4

    .line 4034
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method
