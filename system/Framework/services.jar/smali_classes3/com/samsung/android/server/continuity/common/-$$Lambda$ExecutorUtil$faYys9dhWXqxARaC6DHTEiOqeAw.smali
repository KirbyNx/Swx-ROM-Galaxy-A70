.class public final synthetic Lcom/samsung/android/server/continuity/common/-$$Lambda$ExecutorUtil$faYys9dhWXqxARaC6DHTEiOqeAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/server/continuity/common/-$$Lambda$ExecutorUtil$faYys9dhWXqxARaC6DHTEiOqeAw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/server/continuity/common/-$$Lambda$ExecutorUtil$faYys9dhWXqxARaC6DHTEiOqeAw;

    invoke-direct {v0}, Lcom/samsung/android/server/continuity/common/-$$Lambda$ExecutorUtil$faYys9dhWXqxARaC6DHTEiOqeAw;-><init>()V

    sput-object v0, Lcom/samsung/android/server/continuity/common/-$$Lambda$ExecutorUtil$faYys9dhWXqxARaC6DHTEiOqeAw;->INSTANCE:Lcom/samsung/android/server/continuity/common/-$$Lambda$ExecutorUtil$faYys9dhWXqxARaC6DHTEiOqeAw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->lambda$start$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
