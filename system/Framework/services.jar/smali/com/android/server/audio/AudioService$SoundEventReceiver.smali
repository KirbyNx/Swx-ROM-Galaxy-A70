.class Lcom/android/server/audio/AudioService$SoundEventReceiver;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundEventReceiver"
.end annotation


# instance fields
.field mEventReceiver:Landroid/content/ComponentName;

.field mEventType:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3
    .param p1, "eventType"    # I
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .line 13288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13289
    iput p1, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    .line 13290
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    .line 13291
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 13296
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 13297
    :try_start_3
    move-object v1, p1

    check-cast v1, Lcom/android/server/audio/AudioService$SoundEventReceiver;

    .line 13298
    .local v1, "other":Lcom/android/server/audio/AudioService$SoundEventReceiver;
    iget-object v2, v1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez v2, :cond_b

    return v0

    .line 13300
    :cond_b
    iget-object v2, v1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_13} :catch_14

    return v0

    .line 13302
    .end local v1    # "other":Lcom/android/server/audio/AudioService$SoundEventReceiver;
    :catch_14
    move-exception v1

    goto :goto_17

    .line 13303
    :cond_16
    nop

    .line 13304
    :goto_17
    return v0
.end method

.method public hasEventType(I)Z
    .registers 3
    .param p1, "eventType"    # I

    .line 13308
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public samePackageName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13312
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 13313
    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
