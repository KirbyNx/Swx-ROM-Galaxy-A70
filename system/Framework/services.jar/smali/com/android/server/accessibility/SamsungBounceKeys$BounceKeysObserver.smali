.class final Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;
.super Landroid/database/ContentObserver;
.source "SamsungBounceKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungBounceKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BounceKeysObserver"
.end annotation


# instance fields
.field private final mBounceKeysSettingsUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungBounceKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungBounceKeys;ILandroid/os/Handler;)V
    .registers 4
    .param p2, "userId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 114
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 108
    nop

    .line 109
    const-string p1, "bounce_keys_period"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    .line 115
    iput p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    .line 116
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/high16 v2, 0x3f000000    # 0.5f

    iget v3, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    const-string v4, "bounce_keys_period"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    # setter for: Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriod:F
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungBounceKeys;->access$202(Lcom/android/server/accessibility/SamsungBounceKeys;F)F

    .line 143
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    # getter for: Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriod:F
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungBounceKeys;->access$200(Lcom/android/server/accessibility/SamsungBounceKeys;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    # setter for: Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/SamsungBounceKeys;->access$302(Lcom/android/server/accessibility/SamsungBounceKeys;J)J

    .line 145
    :cond_26
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1f

    .line 122
    if-eqz p1, :cond_17

    .line 126
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 128
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->onChange(ZLandroid/net/Uri;)V

    .line 129
    return-void

    .line 123
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentResolver is not set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observer has already been started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    .line 135
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    return-void

    .line 133
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BounceKeysObserver has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
