.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$AsdnC_7q1TRO6ne9RdLGKQXGXFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$AsdnC_7q1TRO6ne9RdLGKQXGXFQ;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$AsdnC_7q1TRO6ne9RdLGKQXGXFQ;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onStatusChanged$1$GnssStatusListenerHelper(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
