.class public Lcom/android/server/policy/MultiTapKeyEventHandler;
.super Ljava/lang/Object;
.source "MultiTapKeyEventHandler.java"


# static fields
.field private static final MULTI_TAP_DROPPING_TIMEOUT:I = 0x28

.field private static final SEC_MULTI_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultiTapKeyEventHandler"


# instance fields
.field private mConsumed:Z

.field private mDoubleTapEnabled:Z

.field private mDoubleTapPending:Z

.field private final mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mIsLongPress:Z

.field private final mKeyCode:I

.field private mLastEventTime:J

.field private mMultiTapKeyCallback:Lcom/android/server/policy/MultiTapKeyCallback;

.field private mMultiTapTimeout:I

.field private mPressed:Z

.field private final mSingleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTripleTapEnabled:Z

.field private mTripleTapPending:Z


# direct methods
.method constructor <init>(ILcom/android/server/policy/MultiTapKeyCallback;)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "multiTapKeyCallback"    # Lcom/android/server/policy/MultiTapKeyCallback;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mPressed:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mIsLongPress:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapEnabled:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    .line 55
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapTimeout:I

    .line 193
    new-instance v0, Lcom/android/server/policy/-$$Lambda$MultiTapKeyEventHandler$3RzpBjSde2puPks_cuiwBDsEmFA;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$MultiTapKeyEventHandler$3RzpBjSde2puPks_cuiwBDsEmFA;-><init>(Lcom/android/server/policy/MultiTapKeyEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mSingleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Lcom/android/server/policy/-$$Lambda$MultiTapKeyEventHandler$IF1eAXW4m00AOHG-e-6RhJL9ddo;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$MultiTapKeyEventHandler$IF1eAXW4m00AOHG-e-6RhJL9ddo;-><init>(Lcom/android/server/policy/MultiTapKeyEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 58
    iput p1, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mKeyCode:I

    .line 59
    iput-object p2, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapKeyCallback:Lcom/android/server/policy/MultiTapKeyCallback;

    .line 60
    return-void
.end method


# virtual methods
.method dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 18
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 63
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mKeyCode:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_c

    .line 64
    return v3

    .line 67
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    .line 68
    .local v1, "down":Z
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 69
    .local v4, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 71
    .local v5, "canceled":Z
    const-wide/16 v6, 0x0

    const-string v8, "MultiTapKeyEventHandler"

    if-nez v1, :cond_e2

    .line 72
    iput-wide v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    .line 74
    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mIsLongPress:Z

    if-nez v6, :cond_96

    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    if-nez v6, :cond_96

    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mPressed:Z

    if-eqz v6, :cond_96

    if-eqz v5, :cond_35

    goto :goto_96

    .line 91
    :cond_35
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mPressed:Z

    .line 93
    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    if-eqz v6, :cond_66

    .line 94
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_45

    const-string/jumbo v3, "step 1. single tap-up"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_45
    iget-object v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mSingleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mSingleTapTimeoutRunnable:Ljava/lang/Runnable;

    iget v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapTimeout:I

    int-to-long v9, v7

    invoke-virtual {v3, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    .line 99
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_65

    .line 100
    const-string v3, "double tap timeout runnable posted!!"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_65
    return v2

    .line 104
    :cond_66
    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    if-eqz v6, :cond_1bc

    .line 105
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_74

    const-string/jumbo v3, "step 3. double tap-up"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_74
    iget-object v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    iget v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapTimeout:I

    int-to-long v9, v7

    invoke-virtual {v3, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    .line 110
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_95

    .line 111
    const-string/jumbo v3, "triple tap timeout runnable posted!!"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_95
    return v2

    .line 75
    :cond_96
    :goto_96
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_d6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final step. last tap-up mIsLongPress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mIsLongPress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mConsumed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mPressed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mPressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDoubleTapPending="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " canceled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_d6
    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    if-eqz v6, :cond_dd

    .line 82
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    .line 83
    return v2

    .line 86
    :cond_dd
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mIsLongPress:Z

    .line 87
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    .line 88
    return v3

    .line 117
    :cond_e2
    if-nez v4, :cond_1b2

    .line 118
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    .line 119
    iput-boolean v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mPressed:Z

    .line 121
    iget-boolean v9, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    const-wide/16 v10, 0x28

    if-eqz v9, :cond_13b

    .line 122
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v9, :cond_f8

    const-string/jumbo v9, "step 2. double tap-down"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_f8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    sub-long/2addr v12, v14

    cmp-long v9, v12, v10

    if-gtz v9, :cond_121

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "double tap drop for time="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-wide v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    .line 126
    return v3

    .line 129
    :cond_121
    iget-object v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mSingleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    .line 131
    iget-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapEnabled:Z

    if-eqz v3, :cond_131

    .line 132
    iput-boolean v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    goto :goto_13a

    .line 134
    :cond_131
    iput-boolean v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    .line 135
    iget-object v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapKeyCallback:Lcom/android/server/policy/MultiTapKeyCallback;

    if-eqz v3, :cond_13a

    .line 136
    invoke-interface {v3}, Lcom/android/server/policy/MultiTapKeyCallback;->onDoubleTap()V

    .line 140
    :cond_13a
    :goto_13a
    return v2

    .line 141
    :cond_13b
    iget-boolean v9, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    if-eqz v9, :cond_18c

    .line 142
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v9, :cond_149

    const-string/jumbo v9, "step 4. triple tap-down"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_149
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    sub-long/2addr v12, v14

    cmp-long v9, v12, v10

    if-gtz v9, :cond_173

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "triple tap drop for time="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-wide v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mLastEventTime:J

    .line 146
    return v3

    .line 149
    :cond_173
    iget-object v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iput-boolean v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    .line 152
    iput-boolean v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mConsumed:Z

    .line 153
    iget-object v3, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapKeyCallback:Lcom/android/server/policy/MultiTapKeyCallback;

    if-eqz v3, :cond_185

    .line 154
    invoke-interface {v3}, Lcom/android/server/policy/MultiTapKeyCallback;->onTripleTap()V

    .line 157
    :cond_185
    const-string/jumbo v3, "triple tap reset key!!"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v2

    .line 161
    :cond_18c
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1a7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "step 0. single tap-down, timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapTimeout:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1a7
    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapEnabled:Z

    if-nez v6, :cond_1af

    iget-boolean v6, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapEnabled:Z

    if-eqz v6, :cond_1bc

    .line 163
    :cond_1af
    iput-boolean v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    goto :goto_1bc

    .line 165
    :cond_1b2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1bc

    .line 166
    iput-boolean v2, v0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mIsLongPress:Z

    .line 170
    :cond_1bc
    :goto_1bc
    return v3
.end method

.method isDoubleTapEnabled()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapEnabled:Z

    return v0
.end method

.method isTripleTapEnabled()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapEnabled:Z

    return v0
.end method

.method public synthetic lambda$new$0$MultiTapKeyEventHandler()V
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    if-eqz v0, :cond_16

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapPending:Z

    .line 196
    const-string v0, "MultiTapKeyEventHandler"

    const-string/jumbo v1, "mSingleTapTimeoutRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapKeyCallback:Lcom/android/server/policy/MultiTapKeyCallback;

    if-eqz v0, :cond_16

    .line 198
    invoke-interface {v0}, Lcom/android/server/policy/MultiTapKeyCallback;->onSingleTap()V

    .line 201
    :cond_16
    return-void
.end method

.method public synthetic lambda$new$1$MultiTapKeyEventHandler()V
    .registers 3

    .line 204
    iget-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    if-eqz v0, :cond_1a

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapPending:Z

    .line 206
    const-string v0, "MultiTapKeyEventHandler"

    const-string/jumbo v1, "mDoubleTapTimeoutRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapKeyCallback:Lcom/android/server/policy/MultiTapKeyCallback;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapEnabled:Z

    if-eqz v1, :cond_1a

    .line 208
    invoke-interface {v0}, Lcom/android/server/policy/MultiTapKeyCallback;->onDoubleTap()V

    .line 211
    :cond_1a
    return-void
.end method

.method setDoubleTapEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mDoubleTapEnabled:Z

    .line 179
    return-void
.end method

.method setMultiTapTimeout(I)V
    .registers 3
    .param p1, "time"    # I

    .line 174
    add-int/lit16 v0, p1, 0xaa

    iput v0, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mMultiTapTimeout:I

    .line 175
    return-void
.end method

.method setTripleTapEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/android/server/policy/MultiTapKeyEventHandler;->mTripleTapEnabled:Z

    .line 183
    return-void
.end method
