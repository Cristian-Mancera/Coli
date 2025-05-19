; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [150 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 22
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 23
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 59
	i64 702024105029695270, ; 3: System.Drawing.Common => 0x9be17343c0e7726 => 70
	i64 720058930071658100, ; 4: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 53
	i64 870603111519317375, ; 5: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 29
	i64 872800313462103108, ; 6: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 51
	i64 996343623809489702, ; 7: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 65
	i64 1000557547492888992, ; 8: Mono.Security.dll => 0xde2b1c9cba651a0 => 74
	i64 1081082515714103219, ; 9: System.Net.ServerSentEvents => 0xf00c6d1fa0657b3 => 36
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 67
	i64 1301485588176585670, ; 11: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 28
	i64 1425944114962822056, ; 12: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1518315023656898250, ; 13: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 30
	i64 1624659445732251991, ; 14: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 45
	i64 1731380447121279447, ; 15: Newtonsoft.Json => 0x18071957e9b889d7 => 25
	i64 1795316252682057001, ; 16: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 46
	i64 1836611346387731153, ; 17: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 59
	i64 1865037103900624886, ; 18: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 13
	i64 1981742497975770890, ; 19: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 56
	i64 2040001226662520565, ; 20: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 72
	i64 2117617875696363205, ; 21: Messenger.Android => 0x1d634a3d02e626c5 => 0
	i64 2133195048986300728, ; 22: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 25
	i64 2262844636196693701, ; 23: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 51
	i64 2287887973817120656, ; 24: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 73
	i64 2329709569556905518, ; 25: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 55
	i64 2335503487726329082, ; 26: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 39
	i64 2337758774805907496, ; 27: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 38
	i64 2470498323731680442, ; 28: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 48
	i64 2547086958574651984, ; 29: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 44
	i64 2592350477072141967, ; 30: System.Xml.dll => 0x23f9e10627330e8f => 42
	i64 2624866290265602282, ; 31: mscorlib.dll => 0x246d65fbde2db8ea => 24
	i64 2656907746661064104, ; 32: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 17
	i64 2783046991838674048, ; 33: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 38
	i64 2960931600190307745, ; 34: Xamarin.Forms.Core => 0x2917579a49927da1 => 63
	i64 3017704767998173186, ; 35: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 67
	i64 3289520064315143713, ; 36: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 54
	i64 3522470458906976663, ; 37: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 60
	i64 3531994851595924923, ; 38: System.Numerics => 0x31042a9aade235bb => 37
	i64 3727469159507183293, ; 39: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 58
	i64 3783726507060260521, ; 40: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 11
	i64 3789512566578254774, ; 41: System.Net.ServerSentEvents.dll => 0x34970d9a02c693b6 => 36
	i64 3869221888984012293, ; 42: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 20
	i64 4337444564132831293, ; 43: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 27
	i64 4525561845656915374, ; 44: System.ServiceModel.Internals => 0x3ece06856b710dae => 71
	i64 4794310189461587505, ; 45: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 44
	i64 4795410492532947900, ; 46: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 60
	i64 5142919913060024034, ; 47: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 64
	i64 5203618020066742981, ; 48: Xamarin.Essentials => 0x4836f704f0e652c5 => 62
	i64 5507995362134886206, ; 49: System.Core.dll => 0x4c705499688c873e => 32
	i64 6014447449592687183, ; 50: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 8
	i64 6034224070161570862, ; 51: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 10
	i64 6085203216496545422, ; 52: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 65
	i64 6086316965293125504, ; 53: FormsViewGroup.dll => 0x5476f10882baef80 => 3
	i64 6183170893902868313, ; 54: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 27
	i64 6222399776351216807, ; 55: System.Text.Json.dll => 0x565a67a0ffe264a7 => 40
	i64 6401687960814735282, ; 56: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 55
	i64 6548213210057960872, ; 57: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 50
	i64 6560151584539558821, ; 58: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 21
	i64 6659513131007730089, ; 59: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 53
	i64 6783125919820072783, ; 60: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 6
	i64 6876862101832370452, ; 61: System.Xml.Linq => 0x5f6f85a57d108914 => 43
	i64 7017588408768804231, ; 62: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 12
	i64 7488575175965059935, ; 63: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 43
	i64 7635363394907363464, ; 64: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 63
	i64 7637365915383206639, ; 65: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 62
	i64 7654504624184590948, ; 66: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7735176074855944702, ; 67: Microsoft.CSharp => 0x6b58dda848e391fe => 15
	i64 7764315720743298961, ; 68: Messenger.dll => 0x6bc06402cae2a791 => 5
	i64 7820441508502274321, ; 69: System.Data => 0x6c87ca1e14ff8111 => 69
	i64 7836164640616011524, ; 70: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 45
	i64 8083354569033831015, ; 71: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 54
	i64 8087206902342787202, ; 72: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 33
	i64 8167236081217502503, ; 73: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8243855692487634729, ; 74: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 12
	i64 8318905602908530212, ; 75: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 73
	i64 8626175481042262068, ; 76: Java.Interop => 0x77b654e585b55834 => 4
	i64 8638972117149407195, ; 77: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 15
	i64 8725526185868997716, ; 78: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 33
	i64 9324707631942237306, ; 79: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 46
	i64 9662334977499516867, ; 80: System.Numerics.dll => 0x8617827802b0cfc3 => 37
	i64 9678050649315576968, ; 81: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 48
	i64 9808709177481450983, ; 82: Mono.Android.dll => 0x881f890734e555e7 => 23
	i64 9998632235833408227, ; 83: Mono.Security => 0x8ac2470b209ebae3 => 74
	i64 10025518379972707635, ; 84: Messenger.Android.dll => 0x8b21cbd95f6c4533 => 0
	i64 10038780035334861115, ; 85: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10226498071391929720, ; 86: Microsoft.Extensions.Features => 0x8debd1d049888578 => 18
	i64 10229024438826829339, ; 87: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 50
	i64 10430153318873392755, ; 88: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 49
	i64 10447083246144586668, ; 89: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 13
	i64 11002576679268595294, ; 90: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 19
	i64 11023048688141570732, ; 91: System.Core => 0x98f9bc61168392ac => 32
	i64 11037814507248023548, ; 92: System.Xml => 0x992e31d0412bf7fc => 42
	i64 11162124722117608902, ; 93: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 61
	i64 11226290749488709958, ; 94: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 21
	i64 11513602507638267977, ; 95: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 35
	i64 11529969570048099689, ; 96: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 61
	i64 11530571088791430846, ; 97: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 20
	i64 11739066727115742305, ; 98: SQLite-net.dll => 0xa2e98afdf8575c61 => 26
	i64 11806260347154423189, ; 99: SQLite-net => 0xa3d8433bc5eb5d95 => 26
	i64 12102847907131387746, ; 100: System.Buffers => 0xa7f5f40c43256f62 => 31
	i64 12145679461940342714, ; 101: System.Text.Json => 0xa88e1f1ebcb62fba => 40
	i64 12279246230491828964, ; 102: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 30
	i64 12313367145828839434, ; 103: System.IO.Pipelines => 0xaae1de2e1c17f00a => 35
	i64 12451044538927396471, ; 104: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 52
	i64 12466513435562512481, ; 105: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 57
	i64 12538491095302438457, ; 106: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 47
	i64 12843321153144804894, ; 107: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 22
	i64 12963446364377008305, ; 108: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 70
	i64 13295219713260136977, ; 109: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 7
	i64 13370592475155966277, ; 110: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13428779960367410341, ; 111: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 9
	i64 13454009404024712428, ; 112: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 68
	i64 13572454107664307259, ; 113: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 58
	i64 13647894001087880694, ; 114: System.Data.dll => 0xbd670f48cb071df6 => 69
	i64 13959074834287824816, ; 115: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 52
	i64 13967638549803255703, ; 116: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 64
	i64 14124974489674258913, ; 117: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 47
	i64 14551742072151931844, ; 118: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 39
	i64 14604329626201521481, ; 119: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 10
	i64 14669215534098758659, ; 120: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 17
	i64 14792063746108907174, ; 121: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 68
	i64 14809184851036126845, ; 122: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 9
	i64 14954917835170835695, ; 123: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 16
	i64 15370334346939861994, ; 124: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 49
	i64 15391712275433856905, ; 125: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 16
	i64 15446039513167199741, ; 126: Microsoft.Bcl.TimeProvider.dll => 0xd65b5b19c0fa7dfd => 14
	i64 15609085926864131306, ; 127: System.dll => 0xd89e9cf3334914ea => 34
	i64 15810740023422282496, ; 128: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 66
	i64 15847085070278954535, ; 129: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 41
	i64 15963349826457351533, ; 130: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 72
	i64 16154507427712707110, ; 131: System => 0xe03056ea4e39aa26 => 34
	i64 16156430004425724367, ; 132: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 7
	i64 16321164108206115771, ; 133: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 19
	i64 16343918515847859304, ; 134: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 18
	i64 16443659586711370777, ; 135: Messenger => 0xe4339d459960bc19 => 5
	i64 16605226748660468415, ; 136: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 11
	i64 16755018182064898362, ; 137: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 28
	i64 16833383113903931215, ; 138: mscorlib => 0xe99c30c1484d7f4f => 24
	i64 17008757876794951740, ; 139: Microsoft.Bcl.TimeProvider => 0xec0b3f2c34fd883c => 14
	i64 17118171214553292978, ; 140: System.Threading.Channels => 0xed8ff6060fc420b2 => 41
	i64 17571845317586269034, ; 141: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 6
	i64 17636563193350668017, ; 142: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 8
	i64 17704177640604968747, ; 143: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 57
	i64 17710060891934109755, ; 144: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 56
	i64 17838668724098252521, ; 145: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 31
	i64 17882897186074144999, ; 146: FormsViewGroup => 0xf82cd03e3ac830e7 => 3
	i64 17892495832318972303, ; 147: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 66
	i64 18129453464017766560, ; 148: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 71
	i64 18370042311372477656 ; 149: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 29
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [150 x i32] [
	i32 22, i32 23, i32 59, i32 70, i32 53, i32 29, i32 51, i32 65, ; 0..7
	i32 74, i32 36, i32 67, i32 28, i32 2, i32 30, i32 45, i32 25, ; 8..15
	i32 46, i32 59, i32 13, i32 56, i32 72, i32 0, i32 25, i32 51, ; 16..23
	i32 73, i32 55, i32 39, i32 38, i32 48, i32 44, i32 42, i32 24, ; 24..31
	i32 17, i32 38, i32 63, i32 67, i32 54, i32 60, i32 37, i32 58, ; 32..39
	i32 11, i32 36, i32 20, i32 27, i32 71, i32 44, i32 60, i32 64, ; 40..47
	i32 62, i32 32, i32 8, i32 10, i32 65, i32 3, i32 27, i32 40, ; 48..55
	i32 55, i32 50, i32 21, i32 53, i32 6, i32 43, i32 12, i32 43, ; 56..63
	i32 63, i32 62, i32 1, i32 15, i32 5, i32 69, i32 45, i32 54, ; 64..71
	i32 33, i32 4, i32 12, i32 73, i32 4, i32 15, i32 33, i32 46, ; 72..79
	i32 37, i32 48, i32 23, i32 74, i32 0, i32 1, i32 18, i32 50, ; 80..87
	i32 49, i32 13, i32 19, i32 32, i32 42, i32 61, i32 21, i32 35, ; 88..95
	i32 61, i32 20, i32 26, i32 26, i32 31, i32 40, i32 30, i32 35, ; 96..103
	i32 52, i32 57, i32 47, i32 22, i32 70, i32 7, i32 2, i32 9, ; 104..111
	i32 68, i32 58, i32 69, i32 52, i32 64, i32 47, i32 39, i32 10, ; 112..119
	i32 17, i32 68, i32 9, i32 16, i32 49, i32 16, i32 14, i32 34, ; 120..127
	i32 66, i32 41, i32 72, i32 34, i32 7, i32 19, i32 18, i32 5, ; 128..135
	i32 11, i32 28, i32 24, i32 14, i32 41, i32 6, i32 8, i32 57, ; 136..143
	i32 56, i32 31, i32 3, i32 66, i32 71, i32 29 ; 144..149
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
