.class public final synthetic Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-static {v0, p1}, Lcom/android/server/location/AbstractLocationProvider;->lambda$setPackageNames$5(Ljava/util/Set;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object p1

    return-object p1
.end method
