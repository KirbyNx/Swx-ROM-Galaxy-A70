.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$1mo3XgWdXDM5o01BZAWTfMSBZRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$1mo3XgWdXDM5o01BZAWTfMSBZRs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$1mo3XgWdXDM5o01BZAWTfMSBZRs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$1mo3XgWdXDM5o01BZAWTfMSBZRs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$1mo3XgWdXDM5o01BZAWTfMSBZRs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$1mo3XgWdXDM5o01BZAWTfMSBZRs;

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

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$resizeDockedStack$6(Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
