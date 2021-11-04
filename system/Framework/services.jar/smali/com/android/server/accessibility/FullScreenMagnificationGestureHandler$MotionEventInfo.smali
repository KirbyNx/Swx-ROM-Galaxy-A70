.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1102
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .param p1, "x1"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1102
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .registers 2

    .line 1163
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1164
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1166
    return-void
.end method

.method static countOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I
    .registers 4
    .param p0, "info"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .param p1, "eventType"    # I

    .line 1169
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1170
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1171
    invoke-static {v1, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1170
    return v0
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 1142
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1143
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1144
    iput p3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1145
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 1118
    sget-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1119
    :try_start_3
    invoke-static {}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->obtainInternal()Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    .line 1120
    .local v1, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1121
    monitor-exit v0

    return-object v1

    .line 1122
    .end local v1    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static obtainInternal()Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 2

    .line 1128
    sget v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v0, :cond_15

    .line 1129
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1130
    sget-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1131
    .local v0, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1132
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1133
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    goto :goto_1a

    .line 1135
    .end local v0    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :cond_15
    new-instance v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;-><init>()V

    .line 1137
    .restart local v0    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :goto_1a
    return-object v0
.end method

.method public static toString(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1175
    const-string v0, ""

    if-nez p0, :cond_5

    .line 1176
    goto :goto_2f

    .line 1178
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1177
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1178
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .line 1148
    sget-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1149
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-nez v1, :cond_20

    .line 1152
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->clear()V

    .line 1153
    sget v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 1154
    sget v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1155
    sget-object v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1156
    sput-object p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1157
    iput-boolean v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 1159
    :cond_1e
    monitor-exit v0

    .line 1160
    return-void

    .line 1150
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    throw v1

    .line 1159
    .restart local p0    # "this":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
