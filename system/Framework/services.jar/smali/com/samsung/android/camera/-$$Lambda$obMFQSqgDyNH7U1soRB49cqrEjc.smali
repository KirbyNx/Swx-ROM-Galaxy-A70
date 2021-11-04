.class public final synthetic Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;

    invoke-direct {v0}, Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;->INSTANCE:Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
