.class Lcom/android/server/am/MARsHandler$MARsHandlerHolder;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MARsHandlerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/MARsHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/android/server/am/MARsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsHandler;-><init>(Lcom/android/server/am/MARsHandler$1;)V

    sput-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/MARsHandler;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    return-object v0
.end method
