.class Lcom/android/server/AlarmManagerServiceExt$PackageList;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageList"
.end annotation


# instance fields
.field mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegExpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 4269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 4273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4276
    if-nez p1, :cond_3

    .line 4277
    return-void

    .line 4279
    :cond_3
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4280
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4281
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 4284
    :cond_1d
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4285
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4288
    :cond_2e
    :goto_2e
    return-void
.end method

.method public clear()V
    .registers 2

    .line 4321
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4322
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4323
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4305
    if-nez p1, :cond_4

    .line 4306
    const/4 v0, 0x0

    return v0

    .line 4308
    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4309
    .local v0, "match":Z
    if-nez v0, :cond_29

    .line 4310
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4311
    .local v2, "regExp":Ljava/lang/String;
    if-eqz p1, :cond_28

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4312
    const/4 v0, 0x1

    .line 4313
    goto :goto_29

    .line 4315
    .end local v2    # "regExp":Ljava/lang/String;
    :cond_28
    goto :goto_12

    .line 4317
    :cond_29
    :goto_29
    return v0
.end method

.method public loadAppSync3PlusBlackList()V
    .registers 6

    .line 4347
    const-string v0, ".*reminder.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4348
    const-string v0, ".*alert.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4349
    const-string v0, "com.sec.screencheck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4350
    const-string v0, "com.sec.dsm.system"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4351
    const-string v0, "com.samsung.android.fmm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4352
    const-string v0, "com.samsung.ssd.wolfserver"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4353
    const-string v0, "ch.bitspin.timely"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4354
    const-string v0, "com.nhn.android.nmap"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4355
    const-string v0, "com.qihoo.security"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4356
    const-string v0, ".*vodafone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4357
    const-string v0, "com.blackberry.enterprise.bscp.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4358
    const-string v0, "com.google.android.ims"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4359
    const-string v0, "com.google.android.apps.messaging"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4362
    const-string v0, ".*vzw.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4363
    const-string v0, ".*verizon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4364
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    const-string v1, "com.cequint.ecid"

    const-string v2, "com.LogiaGroup.LogiaDeck"

    if-eqz v0, :cond_bd

    .line 4365
    const-string v0, ".*amazon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4366
    const-string v0, "com.audible.application"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4367
    const-string v0, "com.imdb.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4368
    const-string v0, "com.amazon.fv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4369
    const-string v0, "com.gotv.nflgamecenter.us.lite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4370
    const-string v0, "com.slacker.radio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4371
    const-string v0, "com.telecomsys.directedsms.android.SCG"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4372
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4373
    const-string v0, "com.vznavigator.Generic"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4374
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4375
    const-string v0, "com.vcast.mediamanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4376
    const-string v0, "com.sec.android.app.cmas"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4377
    const-string v0, "com.samsung.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4378
    const-string v0, "com.sec.android.app.setupwizard"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4379
    const-string v0, "com.samsung.vvm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4380
    const-string v0, "com.samsung.carrier.logcollector"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4381
    const-string v0, "com.samsung.sdm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4382
    const-string v0, "com.samsung.syncmlservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4383
    const-string v0, "com.samsung.syncmlphonedataservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4384
    const-string v0, "com.samsung.sdm.sdmviewer"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4385
    const-string v0, "com.samsung.PAYGPrePayDetection"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4386
    const-string v0, "com.fusionone.android.sync.vzbuaclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4390
    :cond_bd
    const-string v0, ".*att.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4391
    const-string v0, ".*mizmowireless.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4392
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-eqz v0, :cond_d5

    .line 4393
    const-string v0, "com.welldoc.diabetesmanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4394
    const-string v0, "deezer.android.app"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4398
    :cond_d5
    const-string v0, ".*sprint.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4399
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    const-string v3, "com.lookout"

    const-string v4, "com.amazon.mShop.android"

    if-eqz v0, :cond_189

    .line 4400
    const-string v0, "com.airg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4401
    const-string v0, "com.amazon.mShop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4402
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4403
    const-string v0, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4404
    const-string v0, "com.amazon.mp3"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4405
    const-string v0, "com.amazon.clouddrive.photos"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4406
    const-string v0, "com.boostmobile.boosttv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4407
    const-string v0, "com.coremobility.app.vnotes"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4408
    const-string v0, "com.ebay.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4409
    const-string v0, "com.familyandco.framilywall"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4410
    const-string v0, "com.handmark.expressweather"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4411
    const-string v0, "com.itsoninc.android.itsonclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4412
    const-string v0, "com.itsoninc.android.itsonservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4413
    const-string v0, "com.itsoninc.android.uid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4414
    const-string v0, "com.kineto.smartwifi"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4415
    const-string v0, "com.livewiremobile.musicstore.boost"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4416
    const-string v0, "com.locationlabs.sparkle.yellow.pre"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4417
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4418
    const-string v0, "com.nascar.nascarmobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4419
    const-string v0, "com.nbadigital.gametimelite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4420
    const-string v0, "com.nextradioapp.nextradio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4421
    const-string v0, "com.oem.smartwifisupport"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4422
    const-string v0, "com.pinsight.v1"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4423
    const-string v0, "com.smithmicro.EDM"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4424
    const-string v0, "com.smithmicro.mnd"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4425
    const-string v0, "com.soleo.numbersearch"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4426
    const-string v0, "com.spotify.music"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4427
    const-string v0, "com.telenav.app.android.scout_us"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4428
    const-string v0, "com.ubercab"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4429
    const-string v0, "com.wipit.android.boostwallet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4430
    const-string/jumbo v0, "msgplus.jibe.sca"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4431
    const-string v0, "com.privacystar.android.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4432
    const-string v0, "com.playphone.gamestore"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4433
    const-string v0, "com.livewiremobile.musicstore.vmu"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4437
    :cond_189
    const-string v0, ".*tmobile.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4438
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-eqz v0, :cond_19d

    .line 4439
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4440
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4441
    const-string v0, "com.customermobile.preload"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4445
    :cond_19d
    const-string v0, ".*metro.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4446
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    if-eqz v0, :cond_1b8

    .line 4447
    const-string v0, "com.tmobile.pr.adapt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4448
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4449
    const-string v0, "com.mobileposse.client"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4450
    const-string v0, "com.sec.tetheringprovision"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4454
    :cond_1b8
    const-string v0, ".*tracfone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4457
    const-string v0, ".*uscc.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4458
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-eqz v0, :cond_1de

    .line 4459
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4460
    const-string v0, "com.synchronoss.sm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4461
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4462
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4463
    const-string v0, "com.zed.TrdWapLauncher"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4464
    const-string v0, "com.amazon.windowshop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4468
    :cond_1de
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    if-eqz v0, :cond_22f

    .line 4469
    const-string v0, "com.nttdocomo.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4470
    const-string/jumbo v0, "jp.co.nttdocomo.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4471
    const-string v0, "com.ipg.gguide.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4472
    const-string v0, "com.rsupport.rs.activity.ntt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4473
    const-string v0, "com.mcafee.vsm_android_dcm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4474
    const-string v0, "com.mcafee.safecall.docomo"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4475
    const-string v0, "com.mcafee.android.scanservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4476
    const-string v0, "com.showcasegig.devlawson"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4477
    const-string/jumbo v0, "jp.id_credit_sp.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4478
    const-string/jumbo v0, "jp.dmapnavi.navi02"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4479
    const-string/jumbo v0, "jp.co.mcdonalds.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4480
    const-string/jumbo v0, "jp.co.lawson.activity"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4481
    const-string/jumbo v0, "jp.co.omronsoft.android.decoemojimanager_docomo"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4482
    const-string/jumbo v0, "org.simalliance.openmobileapi.service"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4484
    :cond_22f
    return-void
.end method

.method public loadAppSyncBlackList()V
    .registers 2

    .line 4326
    const-string v0, ".*alarm.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4327
    const-string v0, ".*clock.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4329
    const-string v0, "com.sec\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4330
    const-string v0, "com.sec.epdg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4331
    const-string v0, "com.samsung\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4332
    const-string v0, "com.samsung.android.themecenter"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4333
    const-string v0, "com.iloen.melon"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4334
    const-string v0, "com.iloen.melon.tablet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4335
    const-string v0, ".*knox.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4336
    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4337
    const-string v0, ".*email.ui"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4338
    const-string v0, ".*shealth.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4340
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    if-eqz v0, :cond_4a

    .line 4341
    const-string v0, "com.android.incallui"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4342
    const-string v0, "com.android.services.telephony.common"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4344
    :cond_4a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 4292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4294
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4295
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2c

    .line 4296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4298
    :cond_2c
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4299
    .local v4, "regExp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4300
    .end local v4    # "regExp":Ljava/lang/String;
    goto :goto_32

    .line 4301
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
