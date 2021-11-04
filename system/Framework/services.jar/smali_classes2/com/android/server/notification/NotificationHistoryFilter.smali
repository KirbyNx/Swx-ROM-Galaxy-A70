.class public final Lcom/android/server/notification/NotificationHistoryFilter;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    }
.end annotation


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mNotificationCount:I

.field private mPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/notification/NotificationHistoryFilter$1;

    .line 26
    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationHistoryFilter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return p1
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNotifications()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isFiltering()Z
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public matchesCountFilter(Landroid/app/NotificationHistory;)Z
    .registers 4
    .param p1, "notifications"    # Landroid/app/NotificationHistory;

    .line 76
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .registers 5
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 59
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 60
    return v1

    .line 62
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 63
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 64
    return v1

    .line 69
    :cond_33
    const/4 v0, 0x1

    return v0
.end method
