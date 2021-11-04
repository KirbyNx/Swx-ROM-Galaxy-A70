.class public final synthetic Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
