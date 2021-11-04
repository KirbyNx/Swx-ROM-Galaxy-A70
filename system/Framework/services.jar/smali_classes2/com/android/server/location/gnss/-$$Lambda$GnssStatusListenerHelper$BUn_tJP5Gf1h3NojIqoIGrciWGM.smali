.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;->f$1:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;->f$1:I

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onFirstFix$2$GnssStatusListenerHelper(ILandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
