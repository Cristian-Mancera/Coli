; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [150 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 68
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 25
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 63
	i32 57965594, ; 3: Messenger.Android => 0x3747c1a => 0
	i32 122350210, ; 4: System.Threading.Channels.dll => 0x74aea82 => 41
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 60
	i32 221063263, ; 6: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 7
	i32 230752869, ; 7: Microsoft.CSharp.dll => 0xdc10265 => 15
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 44
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 37
	i32 342366114, ; 10: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 54
	i32 347068432, ; 11: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 29
	i32 348048101, ; 12: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 8
	i32 442521989, ; 13: Xamarin.Essentials => 0x1a605985 => 62
	i32 450948140, ; 14: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 52
	i32 458494020, ; 15: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 11
	i32 465846621, ; 16: mscorlib => 0x1bc4415d => 24
	i32 469710990, ; 17: System.dll => 0x1bff388e => 34
	i32 513247710, ; 18: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 22
	i32 539058512, ; 19: Microsoft.Extensions.Logging => 0x20216150 => 20
	i32 548916678, ; 20: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 13
	i32 627609679, ; 21: Xamarin.AndroidX.CustomView => 0x2568904f => 50
	i32 662205335, ; 22: System.Text.Encodings.Web.dll => 0x27787397 => 39
	i32 690569205, ; 23: System.Xml.Linq.dll => 0x29293ff5 => 43
	i32 748832960, ; 24: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 27
	i32 789151979, ; 25: Microsoft.Extensions.Options => 0x2f0980eb => 21
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 70
	i32 832711436, ; 27: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 12
	i32 928116545, ; 28: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 68
	i32 955402788, ; 29: Newtonsoft.Json => 0x38f24a24 => 25
	i32 967690846, ; 30: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 54
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 32: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 59
	i32 1028951442, ; 33: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 16
	i32 1035644815, ; 34: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 46
	i32 1042160112, ; 35: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 65
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 56
	i32 1058641855, ; 37: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 8
	i32 1098259244, ; 38: System => 0x41761b2c => 34
	i32 1160313973, ; 39: System.Net.ServerSentEvents.dll => 0x4528fc75 => 36
	i32 1233093933, ; 40: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 9
	i32 1292207520, ; 41: SQLitePCLRaw.core.dll => 0x4d0585a0 => 28
	i32 1293217323, ; 42: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 51
	i32 1365406463, ; 43: System.ServiceModel.Internals.dll => 0x516272ff => 71
	i32 1376866003, ; 44: Xamarin.AndroidX.SavedState => 0x52114ed3 => 59
	i32 1406073936, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 48
	i32 1411638395, ; 46: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 38
	i32 1414043276, ; 47: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 6
	i32 1460219004, ; 48: Xamarin.Forms.Xaml => 0x57092c7c => 66
	i32 1469204771, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 45
	i32 1470490898, ; 50: Microsoft.Extensions.Primitives => 0x57a5e912 => 22
	i32 1592978981, ; 51: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 52: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 57
	i32 1639515021, ; 53: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 54: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 67
	i32 1711441057, ; 55: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 29
	i32 1729485958, ; 56: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 47
	i32 1746115085, ; 57: System.IO.Pipelines.dll => 0x68139a0d => 35
	i32 1766324549, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 60
	i32 1770582343, ; 59: Microsoft.Extensions.Logging.dll => 0x6988f147 => 20
	i32 1776026572, ; 60: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 61: Xamarin.AndroidX.Fragment => 0x6a96652d => 52
	i32 1796167890, ; 62: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 13
	i32 1808609942, ; 63: Xamarin.AndroidX.Loader => 0x6bcd3296 => 57
	i32 1809963253, ; 64: Messenger => 0x6be1d8f5 => 5
	i32 1813201214, ; 65: Xamarin.Google.Android.Material => 0x6c13413e => 67
	i32 1828688058, ; 66: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 19
	i32 1867746548, ; 67: Xamarin.Essentials.dll => 0x6f538cf4 => 62
	i32 1878053835, ; 68: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 66
	i32 1932718519, ; 69: Microsoft.Bcl.TimeProvider => 0x7332f1b7 => 14
	i32 1945717188, ; 70: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 9
	i32 1967334205, ; 71: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 11
	i32 1978435800, ; 72: System.Net.ServerSentEvents => 0x75ec88d8 => 36
	i32 2011961780, ; 73: System.Buffers.dll => 0x77ec19b4 => 31
	i32 2019465201, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 56
	i32 2055257422, ; 75: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 55
	i32 2097448633, ; 76: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 53
	i32 2103459038, ; 77: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 30
	i32 2126786730, ; 78: Xamarin.Forms.Platform.Android => 0x7ec430aa => 64
	i32 2181898931, ; 79: Microsoft.Extensions.Options.dll => 0x820d22b3 => 21
	i32 2192057212, ; 80: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 19
	i32 2201231467, ; 81: System.Net.Http => 0x8334206b => 1
	i32 2229158877, ; 82: Microsoft.Extensions.Features.dll => 0x84de43dd => 18
	i32 2279755925, ; 83: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 58
	i32 2319144366, ; 84: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 10
	i32 2435904999, ; 85: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 73
	i32 2465273461, ; 86: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 27
	i32 2475788418, ; 87: Java.Interop.dll => 0x93918882 => 4
	i32 2562349572, ; 88: Microsoft.CSharp => 0x98ba5a04 => 15
	i32 2570120770, ; 89: System.Text.Encodings.Web => 0x9930ee42 => 39
	i32 2637500010, ; 90: Microsoft.Extensions.Features => 0x9d350e6a => 18
	i32 2732626843, ; 91: Xamarin.AndroidX.Activity => 0xa2e0939b => 44
	i32 2735172069, ; 92: System.Threading.Channels => 0xa30769e5 => 41
	i32 2737747696, ; 93: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 45
	i32 2766581644, ; 94: Xamarin.Forms.Core => 0xa4e6af8c => 63
	i32 2778768386, ; 95: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 61
	i32 2810250172, ; 96: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 48
	i32 2819470561, ; 97: System.Xml.dll => 0xa80db4e1 => 42
	i32 2853208004, ; 98: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 61
	i32 2875347124, ; 99: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 7
	i32 2905242038, ; 100: mscorlib.dll => 0xad2a79b6 => 24
	i32 2978675010, ; 101: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 51
	i32 3044182254, ; 102: FormsViewGroup => 0xb57288ee => 3
	i32 3085298356, ; 103: Messenger.dll => 0xb7e5eab4 => 5
	i32 3111772706, ; 104: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3124832203, ; 105: System.Threading.Tasks.Extensions => 0xba4127cb => 72
	i32 3204380047, ; 106: System.Data.dll => 0xbefef58f => 69
	i32 3247949154, ; 107: Mono.Security => 0xc197c562 => 74
	i32 3258312781, ; 108: Xamarin.AndroidX.CardView => 0xc235e84d => 47
	i32 3265893370, ; 109: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 72
	i32 3286872994, ; 110: SQLite-net.dll => 0xc3e9b3a2 => 26
	i32 3317135071, ; 111: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 50
	i32 3317144872, ; 112: System.Data => 0xc5b79d28 => 69
	i32 3353484488, ; 113: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 53
	i32 3358260929, ; 114: System.Text.Json => 0xc82afec1 => 40
	i32 3360279109, ; 115: SQLitePCLRaw.core => 0xc849ca45 => 28
	i32 3362522851, ; 116: Xamarin.AndroidX.Core => 0xc86c06e3 => 49
	i32 3366347497, ; 117: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 118: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 58
	i32 3395150330, ; 119: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 38
	i32 3404865022, ; 120: System.ServiceModel.Internals => 0xcaf21dfe => 71
	i32 3428513518, ; 121: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 17
	i32 3429136800, ; 122: System.Xml => 0xcc6479a0 => 42
	i32 3466904072, ; 123: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 10
	i32 3476120550, ; 124: Mono.Android => 0xcf3163e6 => 23
	i32 3485117614, ; 125: System.Text.Json.dll => 0xcfbaacae => 40
	i32 3509114376, ; 126: System.Xml.Linq => 0xd128d608 => 43
	i32 3536029504, ; 127: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 64
	i32 3632359727, ; 128: Xamarin.Forms.Platform => 0xd881692f => 65
	i32 3641597786, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 55
	i32 3645089577, ; 130: System.ComponentModel.DataAnnotations => 0xd943a729 => 73
	i32 3672681054, ; 131: Mono.Android.dll => 0xdae8aa5e => 23
	i32 3689375977, ; 132: System.Drawing.Common => 0xdbe768e9 => 70
	i32 3691870036, ; 133: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 12
	i32 3748608112, ; 134: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 33
	i32 3754567612, ; 135: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 30
	i32 3787005001, ; 136: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 6
	i32 3829621856, ; 137: System.Numerics.dll => 0xe4436460 => 37
	i32 3840357021, ; 138: Messenger.Android.dll => 0xe4e7329d => 0
	i32 3841636137, ; 139: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 16
	i32 3876362041, ; 140: SQLite-net => 0xe70c9739 => 26
	i32 3896760992, ; 141: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 49
	i32 3955647286, ; 142: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 46
	i32 4017318820, ; 143: Microsoft.Bcl.TimeProvider.dll => 0xef736ba4 => 14
	i32 4023392905, ; 144: System.IO.Pipelines => 0xefd01a89 => 35
	i32 4105002889, ; 145: Mono.Security.dll => 0xf4ad5f89 => 74
	i32 4126470640, ; 146: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 17
	i32 4151237749, ; 147: System.Core => 0xf76edc75 => 32
	i32 4213026141, ; 148: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 33
	i32 4260525087 ; 149: System.Buffers => 0xfdf2741f => 31
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [150 x i32] [
	i32 68, i32 25, i32 63, i32 0, i32 41, i32 60, i32 7, i32 15, ; 0..7
	i32 44, i32 37, i32 54, i32 29, i32 8, i32 62, i32 52, i32 11, ; 8..15
	i32 24, i32 34, i32 22, i32 20, i32 13, i32 50, i32 39, i32 43, ; 16..23
	i32 27, i32 21, i32 70, i32 12, i32 68, i32 25, i32 54, i32 3, ; 24..31
	i32 59, i32 16, i32 46, i32 65, i32 56, i32 8, i32 34, i32 36, ; 32..39
	i32 9, i32 28, i32 51, i32 71, i32 59, i32 48, i32 38, i32 6, ; 40..47
	i32 66, i32 45, i32 22, i32 2, i32 57, i32 1, i32 67, i32 29, ; 48..55
	i32 47, i32 35, i32 60, i32 20, i32 32, i32 52, i32 13, i32 57, ; 56..63
	i32 5, i32 67, i32 19, i32 62, i32 66, i32 14, i32 9, i32 11, ; 64..71
	i32 36, i32 31, i32 56, i32 55, i32 53, i32 30, i32 64, i32 21, ; 72..79
	i32 19, i32 1, i32 18, i32 58, i32 10, i32 73, i32 27, i32 4, ; 80..87
	i32 15, i32 39, i32 18, i32 44, i32 41, i32 45, i32 63, i32 61, ; 88..95
	i32 48, i32 42, i32 61, i32 7, i32 24, i32 51, i32 3, i32 5, ; 96..103
	i32 2, i32 72, i32 69, i32 74, i32 47, i32 72, i32 26, i32 50, ; 104..111
	i32 69, i32 53, i32 40, i32 28, i32 49, i32 4, i32 58, i32 38, ; 112..119
	i32 71, i32 17, i32 42, i32 10, i32 23, i32 40, i32 43, i32 64, ; 120..127
	i32 65, i32 55, i32 73, i32 23, i32 70, i32 12, i32 33, i32 30, ; 128..135
	i32 6, i32 37, i32 0, i32 16, i32 26, i32 49, i32 46, i32 14, ; 136..143
	i32 35, i32 74, i32 17, i32 32, i32 33, i32 31 ; 144..149
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
