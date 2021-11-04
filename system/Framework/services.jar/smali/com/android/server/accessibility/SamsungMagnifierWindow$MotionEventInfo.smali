.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2133
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .param p1, "x1"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2133
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .registers 2

    .line 2200
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->event:Landroid/view/MotionEvent;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$5000(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 2201
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$5000(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 2202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->policyFlags:I

    .line 2203
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 2179
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 2180
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 2181
    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->policyFlags:I

    .line 2182
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .registers 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 2155
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2156
    :try_start_3
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->obtainInternal()Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    .line 2157
    .local v1, "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2158
    monitor-exit v0

    return-object v1

    .line 2159
    .end local v1    # "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static obtainInternal()Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .registers 2

    .line 2165
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPoolSize:I

    if-lez v0, :cond_15

    .line 2166
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPoolSize:I

    .line 2167
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPool:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2168
    .local v0, "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPool:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2169
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2170
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mInPool:Z

    goto :goto_1a

    .line 2172
    .end local v0    # "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    :cond_15
    new-instance v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;-><init>()V

    .line 2174
    .restart local v0    # "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    :goto_1a
    return-object v0
.end method

.method public static toString(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2206
    const-string v0, ""

    if-nez p0, :cond_5

    .line 2207
    goto :goto_2f

    .line 2209
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 2208
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

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2209
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->toString(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2206
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .line 2185
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2186
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mInPool:Z

    if-nez v1, :cond_20

    .line 2189
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->clear()V

    .line 2190
    sget v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 2191
    sget v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPoolSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPoolSize:I

    .line 2192
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPool:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2193
    sput-object p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->sPool:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 2194
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mInPool:Z

    .line 2196
    :cond_1e
    monitor-exit v0

    .line 2197
    return-void

    .line 2187
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    throw v1

    .line 2196
    .restart local p0    # "this":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
