.class public Lcom/android/server/accessibility/SamsungStickyKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungStickyKeys.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INDEX_ALT:I = 0x2

.field private static final INDEX_CTRL:I = 0x1

.field private static final INDEX_MAX:I = 0x4

.field private static final INDEX_META:I = 0x3

.field private static final INDEX_SHIFT:I = 0x0

.field private static final MESSAGE_KEY_UP_ALT:I = 0x64

.field private static final MESSAGE_KEY_UP_CTRL:I = 0x65

.field private static final MESSAGE_KEY_UP_META:I = 0x67

.field private static final MESSAGE_KEY_UP_SHIFT:I = 0x66

.field private static final STATUS_LOCKED:I = 0x2

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_PRESSED:I = 0x1

.field private static final STICKY_ALT_LOCKED:I = 0x2

.field private static final STICKY_ALT_ON:I = 0x1

.field private static final STICKY_CTRL_LOCKED:I = 0x200

.field private static final STICKY_CTRL_ON:I = 0x100

.field private static final STICKY_META_LOCKED:I = 0x2000

.field private static final STICKY_META_ON:I = 0x1000

.field private static final STICKY_SHIFT_LOCKED:I = 0x20

.field private static final STICKY_SHIFT_ON:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SamsungStickyKeys"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mModifierKeyMask:I

.field private mModifierKeyUpEvent:[Landroid/view/KeyEvent;

.field private mModifierKeyUpPolicyFlags:[I

.field private mModifierKeys:[Landroid/widget/TextView;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStickyKeysView:Landroid/view/View;

.field private final mUserId:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 119
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    .line 65
    new-array v1, v0, [Landroid/view/KeyEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    .line 67
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    .line 69
    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungStickyKeys$1;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungStickyKeys$2;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    .line 121
    iput p2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mUserId:I

    .line 122
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->makeViews()V

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungStickyKeys;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 29
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->isHardwareKeyboardAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/SamsungStickyKeys;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;
    .param p1, "x1"    # I

    .line 29
    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    return p1
.end method

.method static synthetic access$172(Lcom/android/server/accessibility/SamsungStickyKeys;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;
    .param p1, "x1"    # I

    .line 29
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungStickyKeys;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungStickyKeys;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/SamsungStickyKeys;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    return-object v0
.end method

.method private static createBackKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 15
    .param p0, "origin"    # Landroid/view/KeyEvent;

    .line 482
    new-instance v13, Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 483
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 484
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    const/4 v6, 0x4

    const/4 v8, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 485
    .local v0, "ev":Landroid/view/KeyEvent;
    return-object v0
.end method

.method private debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 499
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method private getModifierKeyStatus(I)I
    .registers 7
    .param p1, "keyCode"    # I

    .line 278
    const/16 v0, 0x71

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x72

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x75

    if-eq p1, v0, :cond_30

    const/16 v0, 0x76

    if-eq p1, v0, :cond_30

    packed-switch p1, :pswitch_data_4a

    .line 319
    return v2

    .line 291
    :pswitch_17
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_1e

    .line 292
    return v3

    .line 293
    :cond_1e
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_23

    .line 294
    return v1

    .line 296
    :cond_23
    return v2

    .line 281
    :pswitch_24
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2b

    .line 282
    return v3

    .line 283
    :cond_2b
    and-int/2addr v0, v1

    if-eqz v0, :cond_2f

    .line 284
    return v1

    .line 286
    :cond_2f
    return v2

    .line 310
    :cond_30
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_37

    .line 311
    return v3

    .line 312
    :cond_37
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3c

    .line 313
    return v1

    .line 315
    :cond_3c
    return v2

    .line 301
    :cond_3d
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_44

    .line 302
    return v3

    .line 303
    :cond_44
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_49

    .line 304
    return v1

    .line 306
    :cond_49
    return v2

    :pswitch_data_4a
    .packed-switch 0x39
        :pswitch_24
        :pswitch_24
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private injectModifierKeys(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 324
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const-string v5, "SamsungStickyKeys"

    const/4 v6, 0x1

    if-eqz v0, :cond_38

    .line 325
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetAltPressed(Z)V

    .line 326
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_38

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove STICKY_ALT_ON : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x2

    invoke-direct {p0, v0, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 334
    :cond_38
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_6a

    .line 335
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetShiftPressed(Z)V

    .line 336
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6a

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove STICKY_SHIFT_ON : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, v4, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 340
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 344
    :cond_6a
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x300

    if-eqz v0, :cond_9c

    .line 345
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetCtrlPressed(Z)V

    .line 346
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9c

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove STICKY_CTRL_ON : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v6, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 354
    :cond_9c
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x3000

    if-eqz v0, :cond_e0

    .line 355
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetMetaPressed(Z)V

    .line 357
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v6, 0x43

    if-ne v0, v6, :cond_b7

    .line 358
    const-string/jumbo v0, "modify keycode to KEYCODE_BACK"

    invoke-direct {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->createBackKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 362
    :cond_b7
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove STICKY_META_ON : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v1, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 370
    :cond_e0
    return-object p1
.end method

.method private isHardwareKeyboardAvailable()Z
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    .line 477
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isHardwareKeyboardAvailable() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungStickyKeys"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v0
.end method

.method private isModifierKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 237
    const/16 v0, 0x71

    if-eq p1, v0, :cond_15

    const/16 v0, 0x72

    if-eq p1, v0, :cond_15

    const/16 v0, 0x75

    if-eq p1, v0, :cond_15

    const/16 v0, 0x76

    if-eq p1, v0, :cond_15

    packed-switch p1, :pswitch_data_18

    .line 248
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_15
    :pswitch_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x39
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 490
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 491
    return v1

    .line 493
    :cond_c
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private makeViews()V
    .registers 8

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    .line 131
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 132
    .local v0, "mParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 133
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 135
    const/16 v1, 0x708

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 139
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 140
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 141
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_33

    .line 143
    :cond_2f
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 146
    :goto_33
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    const/high16 v2, 0x42000000    # 32.0f

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 149
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 150
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 152
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 153
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109009a

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 155
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 157
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v6, 0x1020534

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v3, v1

    .line 158
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v5, 0x102027b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v1, v4

    .line 159
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v5, 0x10201cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v1, v3

    .line 160
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v5, 0x10203a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v1, v3

    .line 162
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-void
.end method

.method private proccessModifierKeyPress(I)V
    .registers 9
    .param p1, "keyCode"    # I

    .line 374
    const/16 v0, 0x71

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "SamsungStickyKeys"

    if-eq p1, v0, :cond_d8

    const/16 v0, 0x72

    if-eq p1, v0, :cond_d8

    const/16 v0, 0x75

    if-eq p1, v0, :cond_99

    const/16 v0, 0x76

    if-eq p1, v0, :cond_99

    packed-switch p1, :pswitch_data_132

    goto/16 :goto_116

    .line 395
    :pswitch_1a
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_31

    .line 396
    const-string/jumbo v0, "remove STICKY_SHIFT_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 398
    invoke-direct {p0, v1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_116

    .line 399
    :cond_31
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4a

    .line 400
    const-string/jumbo v0, "remove STICKY_SHIFT_ON and set STICKY_SHIFT_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 402
    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 403
    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_116

    .line 405
    :cond_4a
    const-string/jumbo v0, "set STICKY_SHIFT_ON"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 407
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 409
    goto/16 :goto_116

    .line 377
    :pswitch_5b
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_72

    .line 378
    const-string/jumbo v0, "remove STICKY_ALT_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 380
    invoke-direct {p0, v3, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_116

    .line 381
    :cond_72
    and-int/2addr v0, v2

    if-eqz v0, :cond_89

    .line 382
    const-string/jumbo v0, "remove STICKY_ALT_ON and set STICKY_ALT_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 384
    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 385
    invoke-direct {p0, v3, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_116

    .line 387
    :cond_89
    const-string/jumbo v0, "set STICKY_ALT_ON"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 389
    invoke-direct {p0, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 391
    goto/16 :goto_116

    .line 431
    :cond_99
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v5, v0, 0x2000

    const/4 v6, 0x3

    if-eqz v5, :cond_b0

    .line 432
    const-string/jumbo v0, "remove STICKY_META_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 434
    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_116

    .line 435
    :cond_b0
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c8

    .line 436
    const-string/jumbo v0, "remove STICKY_META_ON and set STICKY_META_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 438
    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 439
    invoke-direct {p0, v6, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_116

    .line 441
    :cond_c8
    const-string/jumbo v0, "set STICKY_META_ON"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 443
    invoke-direct {p0, v6, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_116

    .line 413
    :cond_d8
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_ee

    .line 414
    const-string/jumbo v0, "remove STICKY_CTRL_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 416
    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_116

    .line 417
    :cond_ee
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_106

    .line 418
    const-string/jumbo v0, "remove STICKY_CTRL_ON and set STICKY_CTRL_LOCKED"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 420
    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 421
    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_116

    .line 423
    :cond_106
    const-string/jumbo v0, "set STICKY_CTRL_ON"

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 425
    invoke-direct {p0, v2, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 427
    nop

    .line 447
    :goto_116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mModifierKeyMask : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void

    :pswitch_data_132
    .packed-switch 0x39
        :pswitch_5b
        :pswitch_5b
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private saveModifierKeyUpEvent(ILandroid/view/KeyEvent;I)V
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "index":I
    const/16 v1, 0x71

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x72

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x75

    if-eq p1, v1, :cond_19

    const/16 v1, 0x76

    if-eq p1, v1, :cond_19

    packed-switch p1, :pswitch_data_2a

    goto :goto_1d

    .line 261
    :pswitch_15
    const/4 v0, 0x0

    .line 262
    goto :goto_1d

    .line 256
    :pswitch_17
    const/4 v0, 0x2

    .line 257
    goto :goto_1d

    .line 269
    :cond_19
    const/4 v0, 0x3

    goto :goto_1d

    .line 265
    :cond_1b
    const/4 v0, 0x1

    .line 266
    nop

    .line 273
    :goto_1d
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v2

    aput-object v2, v1, v0

    .line 274
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    aput p3, v1, v0

    .line 275
    return-void

    :pswitch_data_2a
    .packed-switch 0x39
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private setModifierKeyStatus(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "status"    # I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setModifierKeyStatus(), index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungStickyKeys"

    invoke-direct {p0, v1, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    .line 169
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz p2, :cond_61

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_47

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2d

    goto :goto_67

    .line 181
    :cond_2d
    const v1, 0x1080a61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 182
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1060325

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_67

    .line 175
    :cond_47
    const v1, 0x1080a62

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 176
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1060327

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    goto :goto_67

    .line 171
    :cond_61
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    nop

    .line 187
    :goto_67
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 464
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 465
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 467
    :cond_7
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 452
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 453
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 455
    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 471
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 191
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 192
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 194
    .local v1, "keyCode":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->isModifierKey(I)Z

    move-result v2

    const-string v3, "SamsungStickyKeys"

    if-eqz v2, :cond_59

    .line 195
    if-nez v0, :cond_32

    .line 196
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->proccessModifierKeyPress(I)V

    .line 197
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->getModifierKeyStatus(I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_51

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignore KeyEvent.ACTION_DOWN : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 202
    :cond_32
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->getModifierKeyStatus(I)I

    move-result v2

    if-eqz v2, :cond_51

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignore KeyEvent.ACTION_UP : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->saveModifierKeyUpEvent(ILandroid/view/KeyEvent;I)V

    .line 205
    return-void

    .line 209
    :cond_51
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_58

    .line 210
    invoke-interface {v2, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 212
    :cond_58
    return-void

    .line 215
    :cond_59
    iget v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    if-lez v2, :cond_61

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->injectModifierKeys(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 219
    :cond_61
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_68

    .line 220
    invoke-interface {v2, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 223
    :cond_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is pressed, alt : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", shift : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ctrl : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", meta : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-direct {p0, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 232
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 234
    :cond_7
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 459
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 460
    return-void
.end method
