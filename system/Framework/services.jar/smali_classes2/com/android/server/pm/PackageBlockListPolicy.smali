.class final Lcom/android/server/pm/PackageBlockListPolicy;
.super Ljava/lang/Object;
.source "PackageBlockListPolicy.java"


# static fields
.field static final mBlockListSet:[Ljava/lang/String;

.field static final mIsFactoryBinary:Z

.field static final mIsLduBinary:Z

.field static final mLduBlocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 13
    const/16 v0, 0x12f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "air.A3DChartsMobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "air.com.n2degames.bulletbenchmark"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "atg.iiimark.app"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "benchmark.packet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.Bfield.CpuIdentifier"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.MadDog.LiveOceanBenchmark"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.Maniac.UnityBenchmark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.OpenWorldGaming.CarDriving3DSimulator"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.almalence.opencam"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.antutu.ABenchMark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.antutu.ABenchMark.GL2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.antutu.ABenchMark.GL3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.antutu.CpuMasterFree"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.antutu.powersaver"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.antutu.tester"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.ayros.bench"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.batterybench"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.cgollner.benchmark.free"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.cpuid.cpu_z"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v3, "com.electronmagic"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v3, "com.footballfight.burstyourscreen"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v3, "com.futuremark.dmandroid.application"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v3, "com.georgie.pi"

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string v3, "com.glbenchmark.glbenchmark27"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v3, "com.i6.FlightSimulatorAirplane3D"

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v3, "com.jcbgrnr.billioncounterv2"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string v3, "com.madfingergames.deadtrigger2"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string v3, "com.motorola.ledwidget"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v3, "com.mtorres.phonetester"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string v3, "com.nemustech.regina"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v3, "com.obkircherlukas.cpuprimebenchmark"

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string v3, "com.os.project.norvigtorious"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const-string v3, "com.qb"

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v3, "com.qqfriends.com.music"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-string v3, "com.re3.benchmark"

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-string v3, "com.redlicense.benchmark.sqlite"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const-string v3, "com.rejectedgames.bonsaibenchmark"

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v3, "com.rfo.esysinfo"

    aput-object v3, v0, v1

    const/16 v1, 0x27

    const-string v4, "com.roofgame.madagascar3d"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v4, "com.rootgame.potaty"

    aput-object v4, v0, v1

    const/16 v1, 0x29

    const-string v4, "com.salapp.phoneinfo"

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    const-string v4, "com.skippy.gunship.helicopter.war"

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    const-string v4, "com.snowcold.benchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    const-string v4, "com.tapinator.boeing.cargoplane"

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    const-string v4, "com.threed.bowling"

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    const-string v4, "com.unstableapps.cpubenchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x2f

    const-string v4, "com.vbulletin.build_2152"

    aput-object v4, v0, v1

    const/16 v1, 0x30

    const-string v4, "com.virtualization.threedpalfreev"

    aput-object v4, v0, v1

    const/16 v1, 0x31

    const-string v4, "com.yes.game.mobile.boxing.game"

    aput-object v4, v0, v1

    const/16 v1, 0x32

    const-string v4, "de.ralischer.gpu_benchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x33

    const-string v4, "fishnoodle.benchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v4, "it.sineo.android.noFrillsCPU"

    aput-object v4, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v4, "jp.flatlib.flatlib3.vfpbench"

    aput-object v4, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v4, "ru.rdmobile.bench"

    aput-object v4, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v4, "softweg.hw.performance"

    aput-object v4, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v4, "vog.com.aiv"

    aput-object v4, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v4, "zausan.zdevicetest"

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    const-string v4, "air.PerformanceDemoBenchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    const-string v4, "air.com.dustunited.StarlingBenchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    const-string v4, "air.com.flashfx.gfx.flame2d"

    aput-object v4, v0, v1

    const/16 v1, 0x3d

    const-string v4, "ales.veluscek.sdtools"

    aput-object v4, v0, v1

    const/16 v1, 0x3e

    const-string v4, "at.favre.app.blurbenchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x3f

    const-string v4, "bg.benchmark.sm"

    aput-object v4, v0, v1

    const/16 v1, 0x40

    const-string v4, "bms.main"

    aput-object v4, v0, v1

    const/16 v1, 0x41

    const-string v4, "boofcv.benchmark.android"

    aput-object v4, v0, v1

    const/16 v1, 0x42

    const-string v4, "carron.graphics.benchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x43

    const-string v4, "com.CPUspeedPrimeNumber"

    aput-object v4, v0, v1

    const/16 v1, 0x44

    const-string v4, "com.JechBeat.Graphics_Bench_Extreme_Lite"

    aput-object v4, v0, v1

    const/16 v1, 0x45

    const-string v4, "com.Maniac.NewBench"

    aput-object v4, v0, v1

    const/16 v1, 0x46

    const-string v4, "com.Maniac.UBenchEnhanced"

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v4, "com.acreve.benchmark"

    aput-object v4, v0, v1

    const/16 v1, 0x48

    const-string v4, "com.agence3pp"

    aput-object v4, v0, v1

    const/16 v1, 0x49

    const-string v4, "com.akerskuuug.swedroidbenchmarks"

    aput-object v4, v0, v1

    const/16 v1, 0x4a

    const-string v4, "com.allego.windmill"

    aput-object v4, v0, v1

    const/16 v1, 0x4b

    const-string v4, "com.android.cm3"

    aput-object v4, v0, v1

    const/16 v1, 0x4c

    const-string v4, "com.andromeda.androbench2"

    aput-object v4, v0, v1

    const/16 v1, 0x4d

    const-string v4, "com.antutu.phoneprofilefree"

    aput-object v4, v0, v1

    const/16 v1, 0x4e

    const-string v4, "com.app3ho.BenchMark"

    aput-object v4, v0, v1

    const/16 v1, 0x4f

    const-string v4, "com.appbuilder.u117719p219766"

    aput-object v4, v0, v1

    const/16 v1, 0x50

    const-string v4, "com.appdroid.anycut"

    aput-object v4, v0, v1

    const/16 v1, 0x51

    const-string v4, "com.appems.hawkeye"

    aput-object v4, v0, v1

    const/16 v1, 0x52

    const-string v4, "com.benchmarkagrisk.app10"

    aput-object v4, v0, v1

    const/16 v1, 0x53

    const-string v4, "com.benchmarkemail.email"

    aput-object v4, v0, v1

    const/16 v1, 0x54

    const-string v4, "com.benchmarkemail.events"

    aput-object v4, v0, v1

    const/16 v1, 0x55

    const-string v4, "com.clarke.agnes.benchmark.android"

    aput-object v4, v0, v1

    const/16 v1, 0x56

    const-string v4, "com.compubench.rs"

    aput-object v4, v0, v1

    const/16 v1, 0x57

    const-string v4, "com.conduit.app_071bf747fb444b11af3c76c604cc8ffe.app"

    aput-object v4, v0, v1

    const/16 v1, 0x58

    const-string v4, "com.creativepsyco"

    aput-object v4, v0, v1

    const/16 v1, 0x59

    const-string v4, "com.dama.hardwareinfo"

    aput-object v4, v0, v1

    const/16 v1, 0x5a

    const-string v5, "com.dms.benchmarkaudit"

    aput-object v5, v0, v1

    const/16 v1, 0x5b

    const-string v5, "com.dnguyen.storebench"

    aput-object v5, v0, v1

    const/16 v1, 0x5c

    const-string v5, "com.drolez.nbench"

    aput-object v5, v0, v1

    const/16 v1, 0x5d

    const-string v5, "com.eembc.andebench"

    aput-object v5, v0, v1

    const/16 v1, 0x5e

    const-string v5, "com.eembc.coremark"

    aput-object v5, v0, v1

    const/16 v1, 0x5f

    const-string v5, "com.elevenbitstudios.anomaly2Benchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x60

    const-string v5, "com.elohim.mtm"

    aput-object v5, v0, v1

    const/16 v1, 0x61

    const-string v5, "com.fi6869.godough"

    aput-object v5, v0, v1

    const/16 v1, 0x62

    const-string v5, "com.gg.pi"

    aput-object v5, v0, v1

    const/16 v1, 0x63

    const-string v5, "com.gpsbenchmark.android"

    aput-object v5, v0, v1

    const/16 v1, 0x64

    const-string v5, "com.greenecomputing.linpack"

    aput-object v5, v0, v1

    const/16 v1, 0x65

    const-string v5, "com.sqi.linpackbenchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v5, "rs.pedjaapps.Linpack"

    aput-object v5, v0, v1

    const/16 v1, 0x67

    const-string v5, "com.hexwave.hexengine.benchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x68

    const-string v5, "com.iTechGenius.porscheSPP"

    aput-object v5, v0, v1

    const/16 v1, 0x69

    const-string v5, "com.ifs.banking.fiid4241"

    aput-object v5, v0, v1

    const/16 v1, 0x6a

    const-string v5, "com.kepsoftware.benchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x6b

    const-string v5, "com.kortenoeverdev.GPUbench"

    aput-object v5, v0, v1

    const/16 v1, 0x6c

    const-string v5, "com.linderdaum.engine.vsdct"

    aput-object v5, v0, v1

    const/16 v1, 0x6d

    const-string v5, "com.linebenchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x6e

    const-string v5, "com.machineworksnorthwest.mwalaskan"

    aput-object v5, v0, v1

    const/16 v1, 0x6f

    const-string v5, "com.magicalgirl.RealSpeed_Limited"

    aput-object v5, v0, v1

    const/16 v1, 0x70

    const-string v5, "com.mobilityre.foursale"

    aput-object v5, v0, v1

    const/16 v1, 0x71

    const-string v5, "com.mot.multicore"

    aput-object v5, v0, v1

    const/16 v1, 0x72

    const-string v5, "com.ndroidsoft.graficos"

    aput-object v5, v0, v1

    const/16 v1, 0x73

    const-string v5, "com.okean.modelloader3dlite"

    aput-object v5, v0, v1

    const/16 v1, 0x74

    const-string v5, "com.particlebenchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x75

    const-string v5, "com.passmark.pt_mobile"

    aput-object v5, v0, v1

    const/16 v1, 0x76

    const-string v5, "com.phosphorgames.DarkMeadow"

    aput-object v5, v0, v1

    const/16 v1, 0x77

    const-string v5, "com.plutonium.software"

    aput-object v5, v0, v1

    const/16 v1, 0x78

    const-string v5, "com.quicinc.vellamo"

    aput-object v5, v0, v1

    const/16 v1, 0x79

    const-string v5, "com.reflexgames.ultrabenchmarkdemo"

    aput-object v5, v0, v1

    const/16 v1, 0x7a

    const-string v5, "com.rightware.BasemarkOSII"

    aput-object v5, v0, v1

    const/16 v1, 0x7b

    const-string v5, "com.rightware.BasemarkX_Free"

    aput-object v5, v0, v1

    const/16 v1, 0x7c

    const-string v5, "com.rightware.tdmm2v10jnifree"

    aput-object v5, v0, v1

    const/16 v1, 0x7d

    const-string v5, "com.rsklnkv.uTest"

    aput-object v5, v0, v1

    const/16 v1, 0x7e

    const-string v5, "com.simplecode.leafy.seadragon.android.benchmark.one"

    aput-object v5, v0, v1

    const/16 v1, 0x7f

    const-string v5, "com.sofica.camspeed"

    aput-object v5, v0, v1

    const/16 v1, 0x80

    const-string v5, "com.sunidea.jme3aibench"

    aput-object v5, v0, v1

    const/16 v1, 0x81

    const-string v5, "com.tactel.electopia"

    aput-object v5, v0, v1

    const/16 v1, 0x82

    const-string v5, "com.threed.jpct.bench"

    aput-object v5, v0, v1

    const/16 v1, 0x83

    const-string v5, "com.threed.jpct.benchxl"

    aput-object v5, v0, v1

    const/16 v1, 0x84

    const-string v5, "com.tomaskimer.gles3mark"

    aput-object v5, v0, v1

    const/16 v1, 0x85

    const-string v5, "com.tutorial"

    aput-object v5, v0, v1

    const/16 v1, 0x86

    const-string v5, "com.wOpenGLGeometryHTMLTesting"

    aput-object v5, v0, v1

    const/16 v1, 0x87

    const-string v5, "com.wtsang02.sqliteutil.activities"

    aput-object v5, v0, v1

    const/16 v1, 0x88

    const-string v5, "de.kashban.android.kakerlake"

    aput-object v5, v0, v1

    const/16 v1, 0x89

    const-string v5, "de.mareas.android.sensmark"

    aput-object v5, v0, v1

    const/16 v1, 0x8a

    const-string v5, "de.swagner.monjori"

    aput-object v5, v0, v1

    const/16 v1, 0x8b

    const-string v5, "droidenschmiede.omega"

    aput-object v5, v0, v1

    const/16 v1, 0x8c

    const-string v5, "esos.MobiBench"

    aput-object v5, v0, v1

    const/16 v1, 0x8d

    const-string v5, "eu.chainfire.cfbench"

    aput-object v5, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v5, "gr.androiddev.BenchmarkPi"

    aput-object v5, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v5, "innovatussystems.benchmarkteam"

    aput-object v5, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v5, "it.JBench.bench"

    aput-object v5, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v5, "jp.kentarokodama.elementbenchmark.jitoff"

    aput-object v5, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v5, "jp.kentarokodama.elementbenchmark.jiton"

    aput-object v5, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v5, "jp.sin_dennou.SinD_Bench"

    aput-object v5, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v5, "mdroid.benchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v5, "name.duzenko.farfaraway"

    aput-object v5, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v5, "net.bsayiner.benchmark.SuperPi"

    aput-object v5, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v5, "net.danielroggen.rambench"

    aput-object v5, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v5, "net.danielroggen.scimark"

    aput-object v5, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v5, "net.fishlabs.vwscc2"

    aput-object v5, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v5, "net.simon.primebenchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v5, "org.hwbot.prime"

    aput-object v5, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v5, "org.noote.RayTracer"

    aput-object v5, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v5, "org.pierre.inputbenchmark"

    aput-object v5, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v5, "org.ruboto.benchmarks"

    aput-object v5, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v5, "prime.of.the.moon.MikuMikuBench"

    aput-object v5, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v5, "prime.of.the.moon.RinRinBench"

    aput-object v5, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v5, "rs.in.luka.android.pi"

    aput-object v5, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v5, "rt.wifirecption.wifireceptionbenchmark"

    aput-object v5, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v5, "vik.teclever"

    aput-object v5, v0, v1

    const/16 v1, 0xa4

    const-string v5, "com.qualcomm.qx.neocore"

    aput-object v5, v0, v1

    const/16 v1, 0xa5

    const-string v5, "com.rightware.basemarkgui"

    aput-object v5, v0, v1

    const/16 v1, 0xa6

    const-string v5, "com.smartbench.eleven"

    aput-object v5, v0, v1

    const/16 v1, 0xa7

    const-string v5, "com.smartbench.twelve"

    aput-object v5, v0, v1

    const/16 v1, 0xa8

    const-string v5, "com.smartbench"

    aput-object v5, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v5, "se.nena.nenamark1"

    aput-object v5, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v5, "se.nena.nenamark2"

    aput-object v5, v0, v1

    const/16 v1, 0xab

    aput-object v2, v0, v1

    const/16 v1, 0xac

    aput-object v4, v0, v1

    const/16 v1, 0xad

    const-string v2, "com.sysinfodroid"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "pl.pawelbialecki.smartsysteminfo"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "org.uguess.android.sysinfo.pro"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "com.inkwired.droidinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "com.chillax.mydroid"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "org.uguess.android.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "com.bhi.systeminfo"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "com.indepico.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "com.jasoncalhoun.android.systeminfowidget"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "jp.co.brycen.android.systeminfoexcel"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "com.p_soft.sysmon"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "com.danijepg.hardwareinfoex"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "kr.smartools.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "com.andro.info"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "com.electricsheep.asipro"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "com.tellmewise.hardware"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "com.everbum.esy"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "com.BoshBashStudios.SystemInfoIDPro"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "com.tech.phoneinfos"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "ka.wo.maybe"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "eu.thedarken.sdm"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    aput-object v3, v0, v1

    const/16 v1, 0xc3

    const-string v2, "com.ryousaku.system_info"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "com.shlee.pi"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "eu.thedarken.diagnosis"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "com.github.beaufortfrancois.cog_chrome_app"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "org.uguess.android.sysinfo.pre"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string/jumbo v2, "jp.main.kurousa.android.livewallpaper.DeviceInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "ru.nfos.aura.body"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "air.com.eu.inove.sss2"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "com.ajeet.sysglance"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "com.gonext.systeminfo"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string/jumbo v2, "in.nishitp.toolbox.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "com.cgollner.systemmonitor"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "cn.menue.phonepermance.international"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "com.sonyericsson.trackid"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string/jumbo v2, "net.androtik.app.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "de.android.telnet"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "com.disney.TempleRunOz.goo"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "ccc71.pmw.pro"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "de.vrsinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string/jumbo v2, "org.uguess.android.sysinfo.pro.widgets"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "com.cgollner.systemmonitor.lite"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "stevesk.apps.solarsystem"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "com.apps.repairandroidsysteminnfo"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "sysinfo.sysinfo.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "pl.wp.android.news"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "fr.francetv.apps.info"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "com.alarmsystem.focus"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "de.screeninfotool"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "com.app.info"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "com.dynotes.miniinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "com.stain46.sysinfonotifree"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "com.indepico.netstat"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "ds.cpuoverlay"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "jp.main.kurousa.android.livewallpaper.DeviceInfoEx"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "com.stain46.sysinfonoti"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string/jumbo v2, "org.uguess.android.sysinfo.nl.ee"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string/jumbo v2, "org.uguess.android.sysinfo.nl.ap"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string/jumbo v2, "org.uguess.android.sysinfo.nl.tw"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string/jumbo v2, "org.uguess.android.sysinfo.nl.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string/jumbo v2, "org.uguess.android.sysinfo.nl.se"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string/jumbo v2, "org.uguess.android.sysinfo.nl.we"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "com.bryancandi.sysi"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "com.torosys.ldsinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "com.droidbs.wallpaper.live.systeminfo"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "org.droidssystemsuite"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "com.lathconsultants.PNR_status"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "com.intelloware.apkinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "com.chillax.mydroid.adfree"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "com.tgsoft.sysinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "com.trigonesoft.rsm"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "com.pgmsoft.library"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "com.rookiestudio.systemmonitor"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "com.mobigic.droidinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "com.rzdev.getsysteminfo.systeminfo"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "com.electricsheep.asi"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "com.primatelabs.geekbench"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "ca.primatelabs.geekbench2"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "com.emobile.flashlight"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "com.james.SmartTaskManager"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "com.antutu.videobench"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string/jumbo v2, "pavel.ugo.cpumonitor4"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string/jumbo v2, "mem.usage"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string/jumbo v2, "org.neotech.app.tinycore"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "com.bigbro.ProcessProfiler"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string/jumbo v2, "org.rjj.android.memorymonitor"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "com.tawkon.power"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string/jumbo v2, "nl.sogeti.android.deviceprofiler"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "com.OS_System_Monitor_209073"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "com.rotaryheart.fan.controller"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "com.phardera.evasysmon"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "com.digibites.m.sysmon"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "com.dev.system.monitor"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "com.scalersoft.widget"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "cz.raven4.MKSysMon1"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "cz.raven4.MKLight"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "de.steffrance.popupmonitor"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "com.rookiestudio.systemmonitor.donate"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "com.dp.sysmonitor.app"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "com.powervr.PVRMonitor"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "com.gmail.hanzomishima007.ap009performancemonitor"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "com.innovationm.myandroid"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "com.alienmanfc6.wheresmyandroid"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "com.checkmyandroid.app"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "com.mymobileprotection20"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "com.TMillerApps.CleanMyAndroid"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "com.usk.app.notifymyandroid"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "com.tools.power"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "com.uzumapps.wakelockdetector"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "com.uzumapps.wakelockdetector.full"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "com.ijinshan.kbatterydoctor_en"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string/jumbo v2, "om.asksven.betterbatterystats"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "com.asksven.betterbatterystats"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "com.zomut.watchdoglite"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string/jumbo v2, "net.rgruet.android.g3watchdog"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "com.zomut.watchdog"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string/jumbo v2, "np.com.rts.networkwatchdog"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "com.smart.SmartMonitorLite"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string/jumbo v2, "ru.larkit.watchdog"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "com.aurorasoftworks.quadrant.ui.professional"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "com.glbenchmark.glbenchmark27.corporate"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "com.glbenchmark.glbenchmark25"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "com.glbenchmark.glbenchmark25.corporate"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "com.glbenchmark.glbenchmark21"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "com.futuremark.dmandroid.slingshot"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string/jumbo v2, "net.kishonti.gfxbench.gl"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "com.primatelabs.geekbench5"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "com.primatelabs.geekbench4"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "com.primatelabs.geekbench3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/PackageBlockListPolicy;->mBlockListSet:[Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/server/pm/PackageBlockListPolicy;->mBlockListSet:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PackageBlockListPolicy;->mLduBlocklist:Ljava/util/HashSet;

    .line 320
    invoke-static {}, Landroid/content/pm/PackageSamsungUtils;->isLduSkuBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageBlockListPolicy;->mIsLduBinary:Z

    .line 321
    nop

    .line 322
    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageBlockListPolicy;->mIsFactoryBinary:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isBlocked(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 329
    sget-object v0, Lcom/android/server/pm/PackageBlockListPolicy;->mLduBlocklist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isEnabled()Z
    .registers 1

    .line 325
    sget-boolean v0, Lcom/android/server/pm/PackageBlockListPolicy;->mIsLduBinary:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/pm/PackageBlockListPolicy;->mIsFactoryBinary:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
