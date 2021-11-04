.class public final synthetic Lcom/android/server/display/-$$Lambda$gjXR9EdCAaEzzoX7l9FY5VZ6D_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$gjXR9EdCAaEzzoX7l9FY5VZ6D_I;->f$0:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$gjXR9EdCAaEzzoX7l9FY5VZ6D_I;->f$0:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
