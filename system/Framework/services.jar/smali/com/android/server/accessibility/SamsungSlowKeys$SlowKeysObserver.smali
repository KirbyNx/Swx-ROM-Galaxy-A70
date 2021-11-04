.class final Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;
.super Landroid/database/ContentObserver;
.source "SamsungSlowKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungSlowKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlowKeysObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mSlowKeysSettingsUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungSlowKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungSlowKeys;ILandroid/os/Handler;)V
    .registers 4
    .param p2, "userId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 129
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 123
    nop

    .line 124
    const-string/jumbo p1, "slow_keys_period"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mSlowKeysSettingsUri:Landroid/net/Uri;

    .line 130
    iput p2, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mUserId:I

    .line 131
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mSlowKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    const v2, 0x3e99999a    # 0.3f

    iget v3, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mUserId:I

    const-string/jumbo v4, "slow_keys_period"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    # setter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriod:F
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$402(Lcom/android/server/accessibility/SamsungSlowKeys;F)F

    .line 158
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriod:F
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$400(Lcom/android/server/accessibility/SamsungSlowKeys;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    # setter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$502(Lcom/android/server/accessibility/SamsungSlowKeys;J)J

    .line 160
    :cond_28
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1f

    .line 137
    if-eqz p1, :cond_17

    .line 141
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 142
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mSlowKeysSettingsUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mUserId:I

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 143
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mSlowKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->onChange(ZLandroid/net/Uri;)V

    .line 144
    return-void

    .line 138
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentResolver is not set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observer has already been started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    return-void

    .line 148
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlowKeysObserver has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
