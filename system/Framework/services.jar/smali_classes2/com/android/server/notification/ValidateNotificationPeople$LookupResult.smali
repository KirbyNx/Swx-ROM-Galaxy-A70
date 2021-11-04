.class Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupResult"
.end annotation


# static fields
.field private static final CONTACT_REFRESH_MILLIS:J = 0x36ee80L


# instance fields
.field private mAffinity:F

.field private final mExpireMillis:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 460
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 452
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    return v0
.end method

.method private isExpired()Z
    .registers 5

    .line 490
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isInvalid()Z
    .registers 3

    .line 494
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method


# virtual methods
.method public getAffinity()F
    .registers 2

    .line 498
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 499
    const/4 v0, 0x0

    return v0

    .line 501
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    return v0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 463
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 467
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "idIdx":I
    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_33

    .line 469
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 470
    .local v2, "id":I
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact _ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 472
    .end local v2    # "id":I
    :cond_33
    const/4 v2, -0x1

    .line 473
    .restart local v2    # "id":I
    const-string/jumbo v3, "invalid cursor: no _ID"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3a
    :goto_3a
    const-string/jumbo v3, "starred"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 478
    .local v3, "starIdx":I
    if-ltz v3, :cond_73

    .line 479
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v4, 0x0

    .line 480
    .local v4, "isStarred":Z
    :goto_4c
    if-eqz v4, :cond_58

    .line 481
    iget v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 483
    :cond_58
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v5

    if-eqz v5, :cond_72

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact STARRED is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v4    # "isStarred":Z
    :cond_72
    goto :goto_7f

    .line 485
    :cond_73
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7f

    const-string/jumbo v4, "invalid cursor: no STARRED"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_7f
    :goto_7f
    return-void
.end method
