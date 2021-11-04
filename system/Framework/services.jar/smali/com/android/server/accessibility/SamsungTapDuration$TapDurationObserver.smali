.class final Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
.super Landroid/database/ContentObserver;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTapDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TapDurationObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mTapDurationSettingUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V
    .registers 4
    .param p2, "userId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 286
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 287
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 280
    const-string/jumbo p1, "tap_duration_threshold"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    .line 288
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    .line 289
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 331
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const v2, 0x3dcccccd    # 0.1f

    iget v3, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    const-string/jumbo v4, "tap_duration_threshold"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, v0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget v1, v0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    .line 336
    :cond_24
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 301
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1f

    .line 304
    if-eqz p1, :cond_17

    .line 308
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 309
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 312
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    .line 313
    return-void

    .line 305
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentResolver not set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observer already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    .line 325
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    return-void

    .line 323
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClickDelayObserver not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
