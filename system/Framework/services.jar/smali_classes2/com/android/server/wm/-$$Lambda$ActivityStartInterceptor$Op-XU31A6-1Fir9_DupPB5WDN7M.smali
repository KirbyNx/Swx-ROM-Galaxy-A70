.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStartInterceptor$Op-XU31A6-1Fir9_DupPB5WDN7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartInterceptor$Op-XU31A6-1Fir9_DupPB5WDN7M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStartInterceptor$Op-XU31A6-1Fir9_DupPB5WDN7M;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStartInterceptor$Op-XU31A6-1Fir9_DupPB5WDN7M;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStartInterceptor$Op-XU31A6-1Fir9_DupPB5WDN7M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartInterceptor$Op-XU31A6-1Fir9_DupPB5WDN7M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStartInterceptor;->lambda$interceptMultiWindowAliasActivityIfNeeded$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p1

    return p1
.end method
