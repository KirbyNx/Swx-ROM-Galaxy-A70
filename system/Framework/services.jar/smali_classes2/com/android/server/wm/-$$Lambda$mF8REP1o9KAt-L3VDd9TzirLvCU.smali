.class public final synthetic Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    return p1
.end method
