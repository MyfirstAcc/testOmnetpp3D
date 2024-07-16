//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

//
// TODO auto-generated type
//
import inet.common.geometry.common.OsgGeographicCoordinateSystem;
import inet.environment.common.PhysicalEnvironment;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedVisualizer;


network Map
{
    parameters:
//        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);
//
//        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
//        @statistic[packetReceived](source=host1.wlan[0].mac.rcvdPkFromLl; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: IntegratedVisualizer {
            parameters:
                @display("p=100,50");
        }
        coordinateSystem: OsgGeographicCoordinateSystem {
            parameters:
                @display("p=100,150");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=100,246");
        }
        host1:  <default("WirelessHost")> like INetworkNode {
            @display("p=382,50");
        }
        host2:  <default("WirelessHost")> like INetworkNode {
            @display("p=382,150");
        }
         host3:  <default("WirelessHost")> like INetworkNode {
            @display("p=487,50");
        }
        host4:  <default("WirelessHost")> like INetworkNode {
            @display("p=487,150");
        }
        host5:  <default("WirelessHost")> like INetworkNode {
            @display("p=577,150");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=259,150");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=258,50");
        }
}



