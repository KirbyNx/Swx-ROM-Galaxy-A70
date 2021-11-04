.class Lcom/android/server/am/FreecessController$FreecessControllerHolder;
.super Ljava/lang/Object;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FreecessControllerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/FreecessController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 253
    new-instance v0, Lcom/android/server/am/FreecessController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessController;-><init>(Lcom/android/server/am/FreecessController$1;)V

    sput-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/FreecessController;
    .registers 1

    .line 252
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    return-object v0
.end method
