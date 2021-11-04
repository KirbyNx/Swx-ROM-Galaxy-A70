.class Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;
.super Lcom/android/internal/net/IDomainFilterEventListener$Stub;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainFilterEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 2

    .line 1821
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Lcom/android/internal/net/IDomainFilterEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .line 1821
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDomainFilterReportEvent(IIJLjava/lang/String;)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "timestamp"    # J
    .param p5, "url"    # Ljava/lang/String;

    .line 1826
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move/from16 v3, p1

    move/from16 v4, p2

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(II)Ljava/lang/String;
    invoke-static {v2, v4, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;

    move-result-object v2

    .line 1827
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_1a

    .line 1828
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "failed to find application which was blocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    return-void

    .line 1832
    :cond_1a
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1833
    .local v5, "timeStamp":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1837
    .local v6, "appUid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1838
    .local v7, "duplicated":Z
    new-instance v8, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    invoke-direct {v8, v5, v6, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    .local v8, "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_29
    const/4 v10, 0x5

    if-ge v9, v10, :cond_48

    .line 1840
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v10

    aget-object v10, v10, v9

    if-eqz v10, :cond_45

    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10, v8}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 1841
    const/4 v7, 0x1

    .line 1839
    :cond_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 1845
    .end local v9    # "i":I
    :cond_48
    if-nez v7, :cond_c6

    .line 1847
    iget-object v9, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v9

    iget-object v11, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v11

    aput-object v8, v9, v11

    .line 1848
    iget-object v9, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # operator++ for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1408(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    .line 1849
    iget-object v9, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v9

    const/4 v11, 0x0

    if-ne v9, v10, :cond_6b

    .line 1850
    iget-object v9, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v9, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1402(Lcom/android/server/enterprise/firewall/DomainFilter;I)I

    .line 1853
    :cond_6b
    iget-object v9, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v9

    .line 1854
    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 1855
    .local v9, "actMngr":Landroid/app/ActivityManager;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1856
    .local v12, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1857
    .local v13, "blockIntent":Landroid/content/Intent;
    const-string v14, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v13, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    const-string v14, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    invoke-virtual {v13, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1859
    const-string v14, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1860
    const-string v14, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

    invoke-virtual {v13, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1861
    iget-object v14, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    if-eqz v14, :cond_b1

    .line 1862
    invoke-virtual {v13, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b4

    .line 1864
    :cond_b1
    invoke-virtual {v13, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1866
    :goto_b4
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    invoke-virtual {v10, v13, v11, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1868
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v5, v6, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1600(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    .end local v9    # "actMngr":Landroid/app/ActivityManager;
    .end local v12    # "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v13    # "blockIntent":Landroid/content/Intent;
    :cond_c6
    return-void
.end method
